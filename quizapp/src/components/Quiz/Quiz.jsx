import React, { useState, useEffect } from 'react';
import './Quiz.css';

// Function to shuffle and return only the first 10 questions
const getRandomQuestions = (array, num) => {
  let shuffled = [...array].sort(() => Math.random() - 0.5);
  return shuffled.slice(0, num);
};

const Quiz = () => {
  const [shuffledData, setShuffledData] = useState([]);
  const [index, setIndex] = useState(0);
  const [question, setQuestion] = useState(null);
  const [lock, setLock] = useState(false);
  const [score, setScore] = useState(0);
  const [result, setResult] = useState(false);
  const [answered, setAnswered] = useState(false);
  const [wrongAnswers, setWrongAnswers] = useState(0);
  const [attempted, setAttempted] = useState(0);
  const [skipped, setSkipped] = useState(0);
  const [selectedOption, setSelectedOption] = useState(null);
  const [userName, setUserName] = useState(0);

  useEffect(() => {
    fetch('http://localhost:5000/api/questions')
      .then((response) => response.json())
      .then((data) => {
        console.log("Fetched Questions:", data); // ✅ Debugging fetched data
        if (!data || data.length === 0) {
          console.error("No questions received from API!");
          return;
        }
  
        const selectedQuestions = getRandomQuestions(data, 10);
        console.log("Selected Questions:", selectedQuestions);
  
        setShuffledData(selectedQuestions);
        setQuestion(selectedQuestions[0]);
  
        // Check the structure of the first question
        console.log("First Question:", selectedQuestions[0]);
      })
      .catch((error) => console.error('Error fetching questions:', error));


      
  }, []);



useEffect(() => {
  fetch("http://localhost:5000/name")
    .then((response) => response.json())
    .then((data) => {
      if (data.length > 0) {
        setUserName(data[data.length - 1].name); // Get the last entered name
      }
    })
    .catch((error) => console.error("Error fetching name:", error));
}, []);

  
  const checkAns = (optionIndex) => {
    if (!lock && question) {
      setAttempted((prev) => prev + 1);
      setSelectedOption(optionIndex);
  
      const correctAnswer = Number(question?.correct); // ✅ Ensure it's a number
      console.log(`Selected: ${optionIndex}, Correct: ${correctAnswer}`);
  
      if (isNaN(correctAnswer)) {
        console.error("Error: question.ans is NaN!", question);
        return;
      }
  
      if (optionIndex === correctAnswer) {
        setScore((prev) => prev + 1);
      } else {
        setWrongAnswers((prev) => prev + 1);
      }
  
      setLock(true);
      setAnswered(true);
    }
  };
  
  const next = () => {
    if (lock) {
      if (index >= shuffledData.length - 1) {
        setResult(true);
        return;
      }
      setIndex((prevIndex) => prevIndex + 1);
      setQuestion(shuffledData[index + 1]); // Update the question
      setLock(false);
      setAnswered(false);
      setSelectedOption(null);
    }
  };
  
  const skip = () => {
    if (!answered) {
      setSkipped((prev) => prev + 1);
      if (index >= shuffledData.length - 1) {
        setResult(true);
        return;
      }
      setIndex((prevIndex) => prevIndex + 1);
      setQuestion(shuffledData[index + 1]); // Update the question
      setLock(false);
      setAnswered(false);
      setSelectedOption(null);
    }
  };
  

  const reset = () => {
    fetch('http://localhost:5000/api/questions')
      .then((response) => response.json())
      .then((data) => {
        const selectedQuestions = getRandomQuestions(data, 10);
        setShuffledData(selectedQuestions);
        setIndex(0);
        setQuestion(selectedQuestions[0]);
        setScore(0);
        setLock(false);
        setResult(false);
        setAnswered(false);
        setWrongAnswers(0);
        setAttempted(0);
        setSkipped(0);
      })
      .catch((error) => console.error('Error fetching questions:', error));
  };

  return (
    <div className='container'>
      <h1>Quiz</h1>
      <hr />
    

      {result ? (
        <>
          <h1>Score Card</h1>
          <h2>Name:  {userName}</h2>
          <h2>Total Questions: {shuffledData.length}</h2>
          <h2>Correct: {score}</h2>
          <h2>Wrong: {wrongAnswers}</h2>
          <h2>Attempted: {attempted}</h2>
          <h2>Skipped: {skipped}</h2>
          <button onClick={reset}>Restart</button>
        </>
      ) : (
        <>
        
          {question && (
            <>
              <h2>
                {index + 1}. {question.question}
              </h2>
              <ul>
  {[question.option1, question.option2, question.option3, question.option4].map((option, i) => {
    let optionClass = "";

    if (lock) {
      if (i + 1 === selectedOption) {
        optionClass = i + 1 === question.correct ? "correct" : "wrong";
      } else if (i + 1 === question.correct) {
        optionClass = "correct";
      }
    }

    return (
      <li
        key={i}
        onClick={() => checkAns(i + 1)}
        className={optionClass}
        style={{ pointerEvents: lock ? "none" : "auto" }} // Prevent multiple clicks
      >
        {option}
      </li>
    );
  })}
</ul>

            </>
          )}
          <div>
            <button onClick={next} disabled={!lock}>
              Next
            </button>
            <button onClick={skip} className='skip' disabled={answered}>
              Skip
            </button>
            <div className='index'>
              {index + 1} of {shuffledData.length} Questions
            </div>
          </div>
        </>
      )}
    </div>
  );
};

export default Quiz;
