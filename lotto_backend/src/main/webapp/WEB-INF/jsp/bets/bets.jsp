<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" type="image/ico" href="favicon.ico" />
    <title>The Lottery | Total Bets</title>

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion no-print" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value="dashboard"/>">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-euro-sign"></i>
                </div>
                <div class="sidebar-brand-text mx-3">The Lottery</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="<c:url value="dashboard"/>">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Overview</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Main Menu
            </div>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="new_bet"/>">
                    <i class="fas fa-fw fa-plus"></i>
                    <span>New Bet</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="<c:url value="bets"/>">
                    <i class="fas fa-fw fa-cubes"></i>
                    <span>Total Bets</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider">


            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>



        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>

                        <!-- Dropdown - Alerts -->
                        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                            aria-labelledby="alertsDropdown">
                            <h6 class="dropdown-header">
                                Alerts Center
                            </h6>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="mr-3">
                                    <div class="icon-circle bg-primary">
                                        <i class="fas fa-file-alt text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <div class="small text-gray-500">December 12, 2020</div>
                                    <span class="font-weight-bold">Try the new tool to print reports of your bets in
                                        pdf!</span>
                                </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="mr-3">
                                    <div class="icon-circle bg-success">
                                        <i class="fas fa-donate text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <div class="small text-gray-500">December 7, 2020</div>
                                    20â¬ has been deposited into your account!
                                </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="mr-3">
                                    <div class="icon-circle bg-warning">
                                        <i class="fas fa-exclamation-triangle text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <div class="small text-gray-500">December 2, 2020</div>
                                    Spending Alert: We noticed few bets in the last month ...
                                </div>
                            </a>
                            <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                        </div>
                    </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg" alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Good luck!</div>
                                        <div class="small text-gray-500">Emily Fowler Â· 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg" alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Shall we make a bet together?</div>
                                        <div class="small text-gray-500">Jae Chun Â· 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg" alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Congratulations on the last prize, bet well !!!</div>
                                        <div class="small text-gray-500">Morgan Alvarez Â· 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Renata Freitas</span>
                                <img class="img-profile rounded-circle" src="img/profile.jpg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="<c:url value="profile"/>">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">TOTAL BETS</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Bets Placed</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Date</th>
                                            <th>Errors</th>
                                            <th>Hits</th>
                                            <th>Result</th>
                                            <th>â¬</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Date</th>
                                            <th>Errors</th>
                                            <th>Hits</th>
                                            <th>Result</th>
                                            <th>â¬</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>3246</td>
                                            <td>2021/04/25</td>
                                            <td>3</td>
                                            <td>12</td>
                                            <td>You Won</td>
                                            <td>5â¬</td>
                                        </tr>
                                        <tr>
                                            <td>3350</td>
                                            <td>2021/04/25</td>
                                            <td>0</td>
                                            <td>15</td>
                                            <td>You Won</td>
                                            <td>50â¬</td>
                                        </tr>
                                        <tr>
                                            <td>3468</td>
                                            <td>2021/04/25</td>
                                            <td>7</td>
                                            <td>8</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>3563</td>
                                            <td>2021/04/25</td>
                                            <td>10</td>
                                            <td>5</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>4101</td>
                                            <td>2021/05/01</td>
                                            <td>1</td>
                                            <td>14</td>
                                            <td>You Won</td>
                                            <td>20â¬</td>
                                        </tr>
                                        <tr>
                                            <td>4111</td>
                                            <td>2021/05/01</td>
                                            <td>5</td>
                                            <td>10</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>4120</td>
                                            <td>2021/05/01</td>
                                            <td>4</td>
                                            <td>11</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>4263</td>
                                            <td>2021/05/01</td>
                                            <td>8</td>
                                            <td>7</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>4285</td>
                                            <td>2021/05/01</td>
                                            <td>13</td>
                                            <td>2</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>4651</td>
                                            <td>2021/05/08</td>
                                            <td>1</td>
                                            <td>14</td>
                                            <td>You Won</td>
                                            <td>20â¬</td>
                                        </tr>
                                        <tr>
                                            <td>4852</td>
                                            <td>2021/05/08</td>
                                            <td>2</td>
                                            <td>13</td>
                                            <td>You Won</td>
                                            <td>10â¬</td>
                                        </tr>
                                        <tr>
                                            <td>4896</td>
                                            <td>2021/05/08</td>
                                            <td>9</td>
                                            <td>6</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>4999</td>
                                            <td>2021/05/08</td>
                                            <td>4</td>
                                            <td>11</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5003</td>
                                            <td>2021/05/10</td>
                                            <td>14</td>
                                            <td>1</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5090</td>
                                            <td>2021/05/10</td>
                                            <td>9</td>
                                            <td>6</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5112</td>
                                            <td>2021/05/10</td>
                                            <td>0</td>
                                            <td>15</td>
                                            <td>You Won</td>
                                            <td>50â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5114</td>
                                            <td>2021/05/10</td>
                                            <td>5</td>
                                            <td>10</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5119</td>
                                            <td>2021/05/10</td>
                                            <td>3</td>
                                            <td>12</td>
                                            <td>You Won</td>
                                            <td>5â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5134</td>
                                            <td>2021/05/17</td>
                                            <td>6</td>
                                            <td>9</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5228</td>
                                            <td>2021/05/20</td>
                                            <td>11</td>
                                            <td>4</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5229</td>
                                            <td>2021/05/26</td>
                                            <td>13</td>
                                            <td>2</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5542</td>
                                            <td>2021/05/26</td>
                                            <td>10</td>
                                            <td>5</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5549</td>
                                            <td>2021/05/27</td>
                                            <td>9</td>
                                            <td>6</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5557</td>
                                            <td>2021/05/27</td>
                                            <td>2</td>
                                            <td>13</td>
                                            <td>You Won</td>
                                            <td>10â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5784</td>
                                            <td>2021/05/27</td>
                                            <td>12</td>
                                            <td>3</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5791</td>
                                            <td>2021/05/28</td>
                                            <td>2</td>
                                            <td>13</td>
                                            <td>You Won</td>
                                            <td>10â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5793</td>
                                            <td>2021/05/28</td>
                                            <td>1</td>
                                            <td>14</td>
                                            <td>You Won</td>
                                            <td>20â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5799</td>
                                            <td>2021/05/28</td>
                                            <td>8</td>
                                            <td>7</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5800</td>
                                            <td>2021/05/28</td>
                                            <td>5</td>
                                            <td>10</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5802</td>
                                            <td>2021/06/01</td>
                                            <td>2</td>
                                            <td>13</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        <tr>
                                            <td>5813</td>
                                            <td>2021/06/06</td>
                                            <td>6</td>
                                            <td>9</td>
                                            <td>You Lost</td>
                                            <td>0â¬</td>
                                        </tr>
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">Ã</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="<c:url value="login"/>">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>