import React from "react";
import { Link } from "react-router-dom";

function MenuBar() {
  return (
    <header className="menu-bar">
      <div id="logo">BevBuy</div>
      <Link exact to="/">
        <a>Home</a>
      </Link>
      <Link exact to="/loginout">
        <a>Log In</a>
      </Link>
      <Link exact to="/create">
        <a>Create</a>
      </Link>
      <Link exact to="/cart">
        <a>Cart</a>
      </Link>
      {/* <Link exact to="/about">
      <a>About</a>
      </Link> */}
    </header>
  );
}

export default MenuBar;
