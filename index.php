<head>
    <style type="text/css">
        .container{
            background-color: black;
            padding-bottom: 30px;
            padding-top: 20px;
        }
    </style>
</head>
<?php
?>
<!DOCTYPE html>
<html lang="en">
    <script>
      <!--
        var ScrollMsg= "Watgo Enterprise System 1.1 - "
        var CharacterPosition=0;
        function StartScrolling() {
        document.title=ScrollMsg.substring(CharacterPosition,ScrollMsg.length)+
        ScrollMsg.substring(0, CharacterPosition);
        CharacterPosition++;
        if(CharacterPosition > ScrollMsg.length) CharacterPosition=0;
        window.setTimeout("StartScrolling()",150); }
        StartScrolling();
      // -->
    </script>
    <?php
 // include(""); //include auth.php file on all secure pages
  //include("employees.php");
  include("index_header.php");
?>
  <body>
    <div class="container">
      <div class="masthead">
        <h3>
          <b></b>
            <a data-toggle="modal" href="#colins" class="pull-right"><b><?php echo''; ?></b></a>
        </h3>
         
      </div><br>

      <!-- Jumbotron -->
      <div class="jumbotron">
        <h2>WATGO GROUP ENTERPRISE SYSTEM 1.1</h2>
        <p class="lead"></p>
        
      </div>
      <!-- this modal is for my Colins -->
      <div class="modal fade" id="colins" role="dialog">
        <div class="modal-dialog modal-sm">
              
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header" style="padding:20px 50px;">
              <button type="button" class="close" data-dismiss="modal" title="Close">&times;</button>
              <h3 align="center">You are logged in as <b><?php echo $_SESSION['username']; ?></b></h3>
            </div>
            <div class="modal-body" style="padding:40px 50px;">
              <div align="center">
                <a href="logout.php" class="btn btn-block btn-danger">Logout</a>
              </div>
            </div>
          </div>
        </div>
      </div>
<?php include('footer.php'); ?>
    </div>
    <!-- FOR DataTable -->
    <script>
      {
        $(document).ready(function()
        {
          $('#myTable').DataTable();
        });
      }
    </script>

    <!-- this function is for modal -->
    <script>
      $(document).ready(function()
      {
        $("#myBtn").click(function()
        {
          $("#myModal").modal();
        });
      });
    </script>
  </body>
</html>
