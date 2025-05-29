<?php
include '../conexion.php';
include '../../class/general.php';
include '../../core/Security.php';


session_start();
$id = Security::getAdminId();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {


    $id =  !empty($_POST['id']) ? $_POST['id'] : null;
    $nombre =  !empty($_POST['nombre']) ? $_POST['nombre'] : null;
    $estado =  !empty($_POST['estado']) ? $_POST['estado'] : null;


    // Editar el resto de los campos
    $result = General::editCampusId($id, $nombre, $estado);

    try{

        $conn -> beginTransaction();

        $stmt = $conn->prepare('UPDATE tbl_campus SET name=:nombre, state=:estado WHERE id=:id');
        $stmt->bindParam('nombre',$nombre);
        $stmt->bindParam('estado',$estado);
        $stmt->bindParam('id',$id);
        $stmt->execute();
        $stmt->closeCursor();

        $conn->commit();

        $response = array(
            'status' => 'success',
            'message' => 'El campus se editó correctamente.'
        );


        
    }catch (PDOException $e){
        $e -> getMessage();

        $conn -> rollBack();

        $response =  array(
            'status' => 'Error',
            'message' => 'No se puedo editar el campus'
        );
    }






    // if ($result->execute()) {

    //     // Items registrado correctamente
    //     $response = array(
    //         'status' => 'success',
    //         'message' => 'La sede se edito correctamente.'
    //     );
    // } else {
    //     // Error al registrar Items
    //     $response = array(
    //         'status' => 'error',
    //         'message' => 'Error al editar sede.'
    //     );
    // }
    // Devolver la respuesta como JSON
    echo json_encode($response);
}
