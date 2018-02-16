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
          Para saber mais, recomendo ler este <a href="https://medium.com/trainingcenter/utilizando-travis-ci-para-fazer-continuous-deployment-de-suas-aplica%C3%A7%C3%B5es-no-github-pages-e86c6b55cba1">este artigo no Medium</a>
        </p>
      </div>
    );
  }
}

export default App;
