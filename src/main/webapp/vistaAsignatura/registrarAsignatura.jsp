<%-- 
    Document   : registrarAsignatura
    Created on : 10 oct. 2023, 18:59:04
    Author     : abdel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="/SistemaUniversidad/css/reset.css" />
        <link rel="stylesheet" href="/SistemaUniversidad/css/header.css" />
        <link rel="stylesheet" href="/SistemaUniversidad/css/style.css" />
        <link rel="stylesheet" href="/SistemaUniversidad/css/footer.css" />
        <link rel="stylesheet" href="/SistemaUniversidad/css/nosotros_y_jsp.css" />
        <link rel="stylesheet" href="/SistemaUniversidad/css/registrar.css" />

    </head>
    <body id="inicio">
        <header class="header-transparente">
            <div class="caja">
                <nav>
                    <ul>
                        <li>
                            <div class="dropdown">
                                <a class="dropbtn">Registrar</a>
                                <div class="dropdown-content">
                                    <a href="/SistemaUniversidad/vistaAlumno/registrarAlumno.jsp">Alumno</a>
                                    <a href="/SistemaUniversidad/vistaDocente/registrarDocente.jsp">Docente</a>
                                    <a href="#">Asignatura</a>
                                    <a href="/SistemaUniversidad/vistaCarreraProfesional/registrarCarreraProfesional.jsp">Carrera profesional</a>
                                    <a href="/SistemaUniversidad/vistaTaller/registrarTaller.xhtml">Taller</a>
                                    <a href="/SistemaUniversidad/vistaCertificacion/registrarCertificacion.xhtml">Certificaciones</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="dropdown">
                                <a class="dropbtn">Mantenimiento</a>
                                <div class="dropdown-content">
                                    <a href="/SistemaUniversidad/vistaAlumno/mantenimientoAlumno.jsp">Alumno</a>
                                    <a href="/SistemaUniversidad/vistaDocente/mantenimientoDocente.jsp">Docente</a>
                                    <a href="/SistemaUniversidad/vistaAsignatura/mantenimientoAsignatura.jsp">Asignatura</a>
                                    <a href="/SistemaUniversidad/vistaCarreraProfesional/mantenimientoCarreraProfesional.jsp">Carrera profesional</a>
                                    <a></a>
                                    <a href="http://localhost:8085/listar">Convenios</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="dropdown">
                                <a class="dropbtn">Reportes</a>
                                <div class="dropdown-content">
                                    <a href="/SistemaUniversidad/vistaAlumno/reporteAlumno.xhtml">Alumno</a>
                                    <a href="/SistemaUniversidad/vistaDocente/reporteDocente.jsp">Docente</a>
                                    <a href="/SistemaUniversidad/vistaAsignatura/reporteAsignatura.jsp">Asignatura</a>
                                    <a href="/SistemaUniversidad/vistaCarreraProfesional/reporteCarreraProfesional.jsp">Carrera profesional</a>
                                    <a href="/SistemaUniversidad/vistaMatricula/reporteMatricula.jsp">Matrícula</a>
                                    <a></a>
                                    <a href="/SistemaUniversidad/vistaAlumno/graficoAlumno.jsp">Gráfico Alumno</a>
                                    <a href="/SistemaUniversidad/vistaDocente/graficoDocente.jsp">Gráfico Docente</a>
                                </div>
                            </div>
                        </li>

                        <li>
                            <a href="/SistemaUniversidad/vistaMatricula/paginaMatricula.jsp" class="boton-blanco">Matrícula Alumnos</a>
                        </li>
                        <li><a href="/SistemaUniversidad/index.html">Inicio</a></li>
                        <li><a href="/SistemaUniversidad/nosotros.html">Nosotros</a></li>
                    </ul>
                </nav>
            </div>
        </header>

        <main>
            <section class="titulo">
                <div class="banner-wrapper">
                    <div class="texto">
                        <h1>Registrar Asignaturas</h1>
                    </div>
                </div>
            </section>

            <section class="ingresar-datos">
                <form action="/SistemaUniversidad/ControlRegistro" method="post">
                    <div class="form-group">
                        <label for="codigo">Código:</label>
                        <input type="text" id="codigo" name="codigo">
                    </div>

                    <div class="form-group">
                        <label for="carrera">Código de Carrera:</label>
                        <input type="text" id="carrera" name="carrera">
                    </div>

                    <div class="form-group">
                        <label for="nombre">Nombre de Asignatura:</label>
                        <input type="text" id="nombre" name="nombre">
                    </div>

                    <div class="form-group">
                        <label for="creditos">Creditos:</label>
                        <input type="text" id="creditos" name="creditos">
                    </div>

                    <div class="form-group button-container">
                        <td><input type="hidden" name="opcion" value="4"></td>
                        <input type="submit" value="Guardar">
                    </div>
                </form>
            </section>
        </main>

        <footer>
            <p class="fondo">Todos los derechos reservados</p>
        </footer>
    </body>
</html>
