import React from "react";
import "./App.css";
import DrinkBuilder from "./DrinkBuilder";
import MenuBar from "./MenuBar";
import Cart from "./Cart";
import Home from "./Home";
import LogInOut from "./LogInOut";
import { Switch, Route } from "react-router-dom";

function App() {
  return (
    <div className="App">
      <MenuBar />
      <Switch>
        <Route path="/cart">
          <Cart />
        </Route>
        <Route path="/loginout">
          <LogInOut className="login" />
        </Route>
        <Route path="/create">
          <DrinkBuilder />
        </Route>
        <Route exact path="/">
          <Home className="home" />
        </Route>
        <Route path="*">
          <h2>
            ERROR: You found a bad link! Try heading back the way you came.
          </h2>
        </Route>
      </Switch>
    </div>
  );
}

export default App;
