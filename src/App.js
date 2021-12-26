import "./App.css";
import 'bootstrap/dist/css/bootstrap.min.css';
import CallBD from "./CallBD";
import React from "react";
import FormularioJugador from "./FormularioJugador";





function App() {
  return (
    <div className="App">
      <CallBD></CallBD>
      <FormularioJugador></FormularioJugador>

    </div>
  );
}

export default App;
