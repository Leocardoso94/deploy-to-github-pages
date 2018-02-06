import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Utilizando o travis para fazer deploy no github pages</h1>
        </header>
        <p className="App-intro">
          Para saber mais recomendo ler este <a href="https://medium.com/">este artigo no Medium</a>
        </p>
      </div>
    );
  }
}

export default App;
