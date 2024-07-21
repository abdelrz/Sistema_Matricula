<%-- 
    Document   : paginaMatricula
    Created on : 10 oct. 2023, 19:02:31
    Author     : abdel
--%>

<%@page import="dao.MatriculaDAO"%>
<%@page import="modelo.Asignatura"%>
<%@page import="modelo.Matricula"%>
<%@page import="controlador.ControlMatricula"%>
<%@page import="java.util.List"%>
<%@page import="dao.AsignaturaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Matrícula de Alumnos</title>
        <link href="/SistemaUniversidad/bootstrap/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="/SistemaUniversidad/css/reset.css" />
        <link rel="stylesheet" href="/SistemaUniversidad/css/header.css" />
        <link rel="stylesheet" href="/SistemaUniversidad/css/style.css" />
        <link rel="stylesheet" href="/SistemaUniversidad/css/footer.css" />
        <link rel="stylesheet" href="/SistemaUniversidad/css/nosotros_y_jsp.css" />
        <link href="/SistemaUniversidad/css/matricula.css" rel="stylesheet" type="text/css"/>
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
                                    <a href="/SistemaUniversidad/vistaAsignatura/registrarAsignatura.jsp">Asignatura</a>
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
                            <a href="#" class="boton-blanco">Matrícula Alumnos</a>
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
                        <h1>Matrícula de Alumnos</h1>
                    </div>
                </div>
            </section>

            <%
                // Crea una instancia de MatriculaDAO
                MatriculaDAO matriculaDAO = new MatriculaDAO();
                // Obtiene la lista de matrículas utilizando el método ListMatri de tu MatriculaDAO
                List<Matricula> listaMatriculas = matriculaDAO.ListMatri();
            %>

            <section class="ingresar-datos">
                <form action="/SistemaUniversidad/ControlMatricula" method="post">
                    <div class="form-group">
                        <label>Código de alumno: (Ya debe existir)</label>
                        <input type="text" name="codigo">
                    </div>

                    <div class="form-group">
                        <label>Semestre:</label>
                        <input type="text" name="semestre">
                    </div>

                    <div class="form-group">
                        <label for="asignatura">Asignatura:</label>
                        <select id="asignatura" name="asignatura">
                            <%
                                AsignaturaDAO asignaturaDAO = new AsignaturaDAO();
                                List<Asignatura> asignaturas = asignaturaDAO.obtenerAsignaturas();
                                for (Asignatura asignatura : asignaturas) {
                            %>
                            <option value="<%= asignatura.getCodigo()%>"><%= asignatura.getNombre()%></option>
                            <%
                                }
                            %>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Turno:</label>
                        <input type="text" name="turno">
                    </div>

                    <div class="form-group">
                        <label>Fecha de matrícula: dd/MM/YYYY</label>
                        <input type="text" name="fecha_matricula">
                    </div>

                    <div class="form-group button-container">
                        <td><input type="hidden" name="opcion" value="1"></td>
                        <input type="submit" value="Guardar">
                    </div>
                </form>
            </section>

            <section>
                <table class="table table-hover">
                    <thead>
                        <tr class="text-white bg-black">
                            <th>Código</th>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>ID Matrícula</th>
                            <th>Semestre</th>
                            <th>Carrera</th>
                            <th>Asignatura</th>
                            <th>Turno</th>
                            <th>Fecha</th>
                            <th>Modificar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (Matricula matricula : listaMatriculas) {%>
                        <tr>
                            <td><%= matricula.getCodigo()%></td>
                            <td><%= matricula.getNombres()%></td>
                            <td><%= matricula.getApellidos()%></td>
                            <td><%= matricula.getId()%></td>
                            <td><%= matricula.getSemestre()%></td>
                            <td><%= matricula.getCarrera()%></td>
                            <td><%= matricula.getNombreAsignatura()%></td>
                            <td><%= matricula.getTurno()%></td>
                            <td><%= matricula.getFechaMatricula()%></td>
                            <td>
                                <a href="/SistemaUniversidad/ControlMatricula?opcion=2&id=<%= matricula.getId()%>">Modificar</a>
                            </td>
                            <td>
                                <a href="/SistemaUniversidad/ControlMatricula?opcion=3&id=<%= matricula.getId()%>">Eliminar</a>
                            </td>
                        </tr>
                        <% }%>
                    </tbody>
                </table>
            </section>
        </main>

        <footer>
            <p class="fondo">Todos los derechos reservados</p>
        </footer>
    </body>
</html>
