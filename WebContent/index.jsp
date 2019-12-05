<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="vieport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>������ �� ����Ʈ Test</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/custom.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.jsp">������ �� ����Ʈ</a>
		<button class="navbar-toggler" style="button" data-toggle="collapse"
			data-target="#navbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">����</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="dropdown"
					data-toggle="dropdown">ȸ�� ����</a>
					<div class="dropdown-menu" aria-labelledby="dropdown">
						<a class="dropdown-item" href="userLogin.jsp">�α���</a> <a class="dropdown-item"
							href="userJoin.jsp">ȸ������</a> <a class="dropdown-item" href="userLogout.jsp">�α׾ƿ�</a>
					</div></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="������ �Է��ϼ���." aria-label="search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">�˻�</button>
			</form>
		</div>
	</nav>
	<section class="container">
		<form method="get" action="./index.jsp" class="form-inline mt-3">
			<select name="lectureDivide" class="form-control mx-1 mt-2">
				<option value="��ü">��ü</option>
				<option value="����">����</option>
				<option value="����">����</option>
				<option value="��Ÿ">��Ÿ</option>
			</select> <input type="text" name="search" class="form-control mx-1 mt-2"
				placeholder="������ �Է��ϼ���.">
			<button type="submit" class="btn btn-primary mx-1 mt-2">�˻�</button>
			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal"
				href="#registerModal">����ϱ�</a> <a class="btn btn-danger mx-1 mt-2"
				data-toggle="modal" href="#reportModal">�Ű��ϱ�</a>


		</form>
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						��ǻ�Ͱ���&nbsp;<small>������</small>
					</div>
					<div class="col-4 text-right">
						����<span style="color: red;">A</span>
					</div>
				</div>
			</div>

			<div class="card-body">
				<h5 class="card-title">
					���� ���� ���ǿ���.&nbsp;<small>(2017�� �����б�)</small>
				</h5>
				<p class="card-text">���ǰ� ���� �γ��ؼ� , ������ ���� ��� �� ������ ������ �� ������ �ʹ�
					���� �� �����ϴ�.</p>
				<div class="row">
					<div class="col-9 text-left">
						����<span style="color: red;">A</span> �γ�<span style="color: red;">A</span>
						����<span style="color: red;">B</span>
						<span style="color: green;">(��õ: 15)</span>
					</div>

					<div class="col-3 text-right">
						<a onclick="return confirm('��õ�Ͻðڽ��ϱ�?')" 	href="./likeAction.jsp?evaluationID=">��õ</a>
						<a onclick="return confirm('�����Ͻðڽ��ϱ�?')" 	href="./deleteAction.jsp?evaluationID=">����</a>
						</div>
					</div>
				</div>
			</div>
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						��ǻ�Ͱ���&nbsp;<small>������</small>
					</div>
					<div class="col-4 text-right">
						����<span style="color: red;">A</span>
					</div>
				</div>
			</div>

			<div class="card-body">
				<h5 class="card-title">
					���� ������ ���ǿ���.&nbsp;<small>(2017�� �����б�)</small>
				</h5>
				<p class="card-text">���Ǹ� ��� �Ƿ��� ���Ǿ����ϴ�.
					���� �� �����ϴ�.</p>
				<div class="row">
					<div class="col-9 text-left">
						����<span style="color: red;">A</span> �γ�<span style="color: red;">A</span>
						����<span style="color: red;">B</span>
						<span style="color: green;">(��õ: 15)</span>
					</div>

					<div class="col-3 text-right">
						<a onclick="return confirm('��õ�Ͻðڽ��ϱ�?')" 	href="./likeAction.jsp?evaluationID=">��õ</a>
						<a onclick="return confirm('�����Ͻðڽ��ϱ�?')" 	href="./deleteAction.jsp?evaluationID=">����</a>
						</div>
					</div>
				</div>
			</div>
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						��ǻ�Ͱ���&nbsp;<small>������</small>
					</div>
					<div class="col-4 text-right">
						����<span style="color: red;">A</span>
					</div>
				</div>
			</div>

			<div class="card-body">
				<h5 class="card-title">
					���� �ְ��� ���ǿ���.&nbsp;<small>(2017�� �����б�)</small>
				</h5>
				<p class="card-text">���ǰ� �پ��� �� �����ϴ�.</p>
				<div class="row">
					<div class="col-9 text-left">
						����<span style="color: red;">A</span> �γ�<span style="color: red;">A</span>
						����<span style="color: red;">A</span>
						<span style="color: green;">(��õ: 35)</span>
					</div>

					<div class="col-3 text-right">
						<a onclick="return confirm('��õ�Ͻðڽ��ϱ�?')" 	href="./likeAction.jsp?evaluationID=">��õ</a>
						<a onclick="return confirm('�����Ͻðڽ��ϱ�?')" 	href="./deleteAction.jsp?evaluationID=">����</a>
						</div>
					</div>
				</div>
			</div>
	</section>

	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">�� ���</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./evaluationRegisterAction.jsp" method="post">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>���Ǹ�</label> <input type="text" name="lectureName"
									class="form-control" maxlength="20">
							</div>
							<div class="form-group col-sm-6">
								<label>������</label> <input type="text" name="professorName"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-4">
								<label>���� ����</label> <select name="lectureYear"
									class="form-control">
									<option value="2011">2011</option>
									<option value="2012">2012</option>
									<option value="2013">2013</option>
									<option value="2014">2014</option>
									<option value="2015">2015</option>
									<option value="2016">2016</option>
									<option value="2017">2017</option>
									<option value="2018" selected>2018</option>
									<option value="2019">2019</option>
									<option value="2020">2020</option>
									<option value="2021">2021</option>
									<option value="2022">2022</option>
									<option value="2023">2023</option>
								</select>
							</div>
							<div class="form-group col-sm-4">
								<label>���� �б�</label> <select name="semesterDivide"
									class="form-control">
									<option value="1�б�" selected>1�б�</option>
									<option value="�����б�">�����б�</option>
									<option value="2�б�">2�б�</option>
									<option value="�ܿ��б�">�ܿ��б�</option>
								</select>
							</div>
							<div class="form-group col-sm-4">
								<label>���� ����</label> <select name="lectureDivide"
									class="form-control">
									<option value="����" selected>����</option>
									<option value="����">����</option>
									<option value="��Ÿ">��Ÿ</option>
								</select>
							</div>
						</div>

							<div class="form-group">
								<label>����</label> <input type="text" name="reportTitle"
									class="form-control" maxlength="30">
							</div>
							<div class="form-group">
								<label>����</label>
								<textarea name="reportContent" class="form-control"
									maxlength="2048" style="height: 180px;"></textarea>
							</div>

							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">���</button>
							<button type="submit" class="btn btn-primary" data-dismiss="modal">����ϱ�</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="reportModal" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">�Ű��ϱ�</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./reportAction.jsp" method="post">


						<div class="form-group">
							<label>�Ű� ����</label> <input type="text" name="reportTitle"
								class="form-control" maxlength="30">
						</div>
						<div class="form-group">
							<label>�Ű� ����</label>
							<textarea name="reportContent" class="form-control"
								maxlength="2048" style="height: 180px;"></textarea>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">���</button>
							<button type="submit" class="btn btn-danger" data-dismiss="modal">�Ű��ϱ�</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div> 
	<footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">
	Footer Area</footer>
	<script src="./js/jquery.min.js"></script>
	<script src="./js/pooper.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>