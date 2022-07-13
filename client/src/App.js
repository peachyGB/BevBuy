import React, { useEffect, useState } from "react";
import "./App.css";
import DrinkBuilder from "./DrinkBuilder";
import MenuBar from "./MenuBar";
import Cart from "./Cart";
import Home from "./Home";
import LogInOut from "./LogInOut";
import { Switch, Route } from "react-router-dom";

function App() {
  //fetches data from server on inital page load
  const [ingredientsList, setIngredientsList] = useState([]);

  useEffect(() => {
    fetch("http://localhost:3000/ingredients")
      .then((r) => r.json())
      .then((data) => setIngredientsList(data));
  }, []);

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
          <DrinkBuilder ingredientsList={ingredientsList} />
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
