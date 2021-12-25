import React, { cloneElement } from "react";


class CallBD extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <form action="http://localhost/concurso/concurso/src/TraerDatos.php" method="post">
          <li></li>
        <button type="submit" type="submit" class="btn btn-success">
          LLAMADO
        </button>
      </form>
    );
  }
}
export default CallBD;
