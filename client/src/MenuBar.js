import React from "react";
import { Link } from "react-router-dom";

function MenuBar({ setDrinkID }) {
  let drinkForPost = {
    size: "S",
    favorite: false,
    user_id: 1,
  };

  function handleMakeDrink() {
    console.log("on click triggered for Make Drink");
    fetch("http://localhost:3000/drinks", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(drinkForPost),
    })
      .then((r) => r.json())
      .then((data) => setDrinkID(data.id));
  }

  return (
    <header className="menu-bar">
      <div id="logo">BevBuy</div>
      <Link exact to="/">
        <div>Home</div>
      </Link>
      <Link exact to="/loginout">
        <div>Log In</div>
      </Link>
      <Link exact to="/create">
        <div onClick={handleMakeDrink}>Create</div>
      </Link>
      <Link exact to="/cart">
        <div>Cart</div>
      </Link>
      {/* <Link exact to="/about">
      <div>About</div>
      </Link> */}
    </header>
  );
}

export default MenuBar;
