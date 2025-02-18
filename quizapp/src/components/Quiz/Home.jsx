import React, { useState } from 'react';
import { useNavigate } from "react-router-dom";
import axios from 'axios';
import './Quiz.css';
import { data } from '../../assets/data';

const Home = () => {
  const [values, setValues] = useState({
    name: '',
  });

  const handleInput = (event) => {
    setValues((prev) => ({ ...prev, [event.target.name]: event.target.value })); // Fix: Store value as string
  };

  const navigate = useNavigate();

  const startQuiz = () => {
    const randomQuestion = data[Math.floor(Math.random() * data.length)];
    navigate("/quiz", { state: { question: randomQuestion } });
  };

  const handleSubmit = async (event) => {
    event.preventDefault();

    try {
      const response = await axios.post('http://localhost:5000/name', values);
      console.log('Data saved:', response.data);
      startQuiz(); // Move this here to ensure it runs after data is stored
    } catch (error) {
      console.error('Error saving data:', error);
    }
  };

  return (
    <div className='container'>
      <h1>Welcome to the Quiz</h1>
      <form onSubmit={handleSubmit}>
        <div className='name'>
          <label htmlFor='name'>Enter Your Name</label>
          <input 
            type='text' 
            onChange={handleInput} 
            id='name' 
            name='name' 
          className='input'
            value={values.name} // Keep the input controlled
          />
        </div>

        <div>
          <button type='submit' className='start'>Start Quiz</button>
        </div>
      </form>
    </div>
  );
};

export default Home;
