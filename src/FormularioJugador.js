import 'bootstrap/dist/css/bootstrap.min.css';
import React from "react"; 
import { FormGroup,Label, Input, Form } from "reactstrap";




class FormularioJugador extends React.Component {
  constructor(props) {
    super(props);
  } 
        datosRef= React.createRef();
        obtenerDatos = (e) =>{
        e.preventDefault();
        console.log(this.obtenerDatos.current.value);

        }


  render() { 
    return (
    <form onSubmit={this.obtenerDatos}>
     <div className= "formulario container">
      <div className= "jumbotron">
       <p className= "lead text-center">CONCURSO DE PREGUNTAS</p>
        
        <Form>
            <FormGroup>
                <Label for="Nombre jugador">Datos del jugador</Label>
                    <Input id="Nombre jugador" name="Nombre" placeholder="Digite su nombre"type="text"  />
                        </FormGroup>
            <FormGroup>           
                <Label for="Apellido jugador">Apellido </Label>
                     <Input id="Apellido jugador" name="apellido" placeholder="Digite su apellido"  type="text" />
                        </FormGroup>
            <FormGroup>
                <Label for="Edad jugador"> Edad</Label>
                    <Input id="edad jugador" name="edad" placeholder="Digite su edad" type="int"/>
                        </FormGroup>
           
            <button type="submit" type="submit" class="btn btn-success"> Empezar el juego </button>
        </Form>
       </div> 
     </div>  
    </form>
    );
  }
}
export default FormularioJugador;