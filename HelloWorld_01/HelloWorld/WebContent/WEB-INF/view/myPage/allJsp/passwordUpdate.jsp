<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="card card-primary">
	<div class="card-header">
		<h3 class="card-title">비밀번호 변경</h3>
	</div>
	<!-- /.card-header -->
	<!-- form start -->
	<form id="quickForm">
		<div class="card-body">
			<div class="form-group">
				<label for="exampleInputEmail1">회원님의 아이디</label> <input type="email"
					name="email" class="form-control" id="exampleInputEmail1">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">변경할 비밀번호</label> <input
					type="password" name="password" class="form-control"
					id="exampleInputPassword1" placeholder="Password">
			</div>
		</div>
		<!-- /.card-body -->
		<div class="card-footer">
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
	</form>
</div>
<!-- /.card -->