<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
@font-face {
	font-family: 'DungGeunMo';
	src:
		url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	box-sizing: border-box;
}

html {
	font-family: 'DungGeunMo';
}

.inner {
	height: 95%;
	width: 95%;
	border-radius: 10px;
	border: 1px solid lightgray;
}

.inner-fat {
	height: 95%;
	width: 98%;
	border-radius: 10px;
	border: 1px solid lightgray;
}

.inner-thin {
	height: 90%;
	width: 90%;
	border-radius: 10px;
	border: 1px solid lightgray;
}

.title-form {
	background-color: #494949;
	border-radius: 10px 10px 0 0;
	color: white;
}

.container {
	width: 100vw;
	height: 300vh;
	position: relative;
}

.container>div {
	float: left;
	height: 100%;
}

.left-navi {
	width: 20%;
	position: fixed;
	left: 0px;
	top: 0px;
	background-color: #494949;
	color: white;
}

.left-navi-selector {
	width: 100%;
	position: relative;
}

ul {
	height: fit-content;
	margin: 0px;
	padding: 0px;
	list-style-type: none;
	width: 100%;
	position: absolute;
	top: 500px;
}

li {
	width: 100%;
	height: 70px;
	display: flex;
	align-items: center;
	padding: 25px;
	font-size: 25px;
	font-weight: bold;
}

li:hover {
	cursor: pointer;
}

.contents {
	width: 80%;
	position: absolute;
	right: 0px;
}

.contents>div {
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.center-align {
	display: flex;
	align-items: center;
	justify-content: center;
}

.title {
	height: 10%;
	font-size: 50px;
	font-weight: bolder;
	display: flex;
	align-items: center;
	padding-left: 50px;
}

.contents-inner {
	height: 90%;
}

.contents-inner>div {
	height: 100%;
	float: left;
}

.game-dashboard-inner>div {
	float: left;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.game-selector {
	width: 25%;
}

.display-info {
	height: 20%;
}

.display-info-title {
	height: 30%;
	display: flex;
	align-items: center;
	padding-left: 15px;
	font-size: 25px;
	font-weight: bolder;
}

.display-info-contents {
	height: 70%;
	font-size: 30px;
}

.detail-dashboard {
	width: 75%;
}

.detail-dashboard-inner {
	width: 95%;
	height: 95%;
}

.access-count-display {
	height: 30%;
}

.access-count-title {
	height: 20%;
	font-size: 35px;
	font-weight: bolder;
	display: flex;
	align-items: center;
	padding-left: 15px;
}

.access-count-contents {
	height: 80%;
}

.access-count-contents>div {
	float: left;
	height: 100%;
}

.access-count {
	width: 95%;
}

.dashboard-selector {
	width: 5%;
}

.detail-dashborad-bottom {
	height: 70%;
}

.detail-dashborad-bottom>div {
	height: 100%;
	float: left;
}

.playtime-display {
	width: 45%;
}

.playtime-title {
	height: 15%;
	font-size: 35px;
	font-weight: bolder;
	display: flex;
	align-items: center;
	padding-left: 15px;
}

.playtime-button-form {
	height: 5%;
}

.playtime {
	height: 80%;
}

.detail-dashboard-bottom-right {
	width: 55%;
}

.game-detail-display-title {
	height: 15%;
}

.game-detail-display-contents {
	height: 85%;
}

.game-detail-display-contents>div {
	float: left;
	height: 100%;
}

.game-detail {
	width: 90%;
}

.game-detail-title {
	height: 20%;
	display: flex;
	align-items: center;
}

.game-detail-title>span {
	margin-left: 10px;
}

#game-title {
	font-size: 25px;
	font-weight: bold;
}

#game-id {
	color: gray;
}

.game-detail-contents {
	height: 80%;
}

.game-detail-info {
	height: 30%;
}

.game-detail-info>div {
	float: left;
	height: 100%;
	width: 50%;
}

.game-detail-daliy-access {
	height: 40%;
}

.game-detail-inner-title {
	height: 30%;
	display: flex;
	align-items: center;
	font-weight: bold;
	padding-left: 15px;
}

.game-detail-inner-contents {
	height: 70%;
}

.game-detail-inner-chart-contents {
	height: 80%;
}

#daliy-playtime-sum-game-detail {
	font-weight: bolder;
}

.board-management-inner>div {
	float: left;
	height: 100%;
	width: 50%;
}

.user-info {
	height: 20%;
}

.user-info-title {
	height: 50%;
}

.resent-board {
	height: 30%;
}

.ban-list {
	height: 60%;
}

.ban-controller {
	height: 20%;
}

.ban-controller>div>div {
	float: left;
	height: 100%;
}

.isBaaned-display {
	color: gray;
	font-size: 15px;
	margin-left: 20px;
}

.resent-title {
	height: 20%;
}

.ban-list-title {
	height: 20%;
}

.ban-detail-setting {
	width: 70%;
}

.ban-button {
	width: 30%;
}

.ban-detail-setting>div {
	height: 50%;
}

.check-ban{
	padding: 10px 15px;
	background: #3c3b39;
	color: white;
	border-radius: 5px;
	cursor: pointer;
	border: none;
	margin:10px;
}

.check-ban:hover{
	background: #66635f;
	transform: scale(1.1);
	color: white;
}

.qna-inner>div {
	width: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.qna-list-contents {
	height: 85%;
	display: flex;
	align-items: center;
	justify-content: center;
}

table {
	width: 100%;
}

.qna-list-contents-inner {
	height: 98%;
	width: 98%;
}

.qna-list-controller {
	height: 10%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.page-navi-form {
	height: 5%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.page-navi-inner {
	height: 90%;
	width: 98%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.qna-title-inner {
	height: 70%;
	width: 98%;
	top:0px;
}

.qna-title {
	height: 10%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.qna-contents {
	height: 60%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.qna-contents-inner {
	width: 98%;
	height: 95%;
}

#qna-contents-contents {
	height: 100%;
	width: 100%;
	overflow-y: auto;
}

.qna-contents-button {
	height: 5%;
	position: relative;
}

#qna-delete {
	right: 30px;
	position: absolute;
}

.qna-reply {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 30%;
}

.qna-reply-inner {
	width: 98%;
	height: 95%;
	padding:20px;
}

.qna-reply-contents {
	height: 90%;
	border: 1px solid lightgray;

}

#qna-contents-contents {
	overflow-y: auto;
}

.qna-reply-controller {
	height: 10%;
}

.qna-response-y {
	background-color: black;
}

.check-response-yn{
	padding: 10px 10px;
	background-color: #3c3b39;
	color: white;
	border: none;
	border-radius: 5px;
	font-family: 'DungGeunMo';
	transition: all 0.4s;
	font-weight: bold;
	margin-right:3px;
}

.check-response-yn:hover {
	background: #66635f;
	transform: scale(1.1);
	color: white;
}

.allbtn{
	margin-right:10px;
}

.controller-list>span {
	width: 100%;
	display: flex;
	justify-content: space-evenly;
}

table {
	border-collapse: collapse;
	border-spacing: 3px;
	border-collapse: separate;
}

table th, table td {
	border-radius: 1px;
	border: none;
	background-color: #c7c7c770;
}

</style>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js"></script>
<meta name="csrf-token" content="${csrfToken}">
</head>

<body>
	<div class="container">
		<div class="left-navi">
			<div class="letf-navi-selector">
				<ul>
					<li class="left-selector" value="game-dashboard">게임 DashBoard</li>
					<li class="left-selector" value="board-management">Board 관리</li>
					<li class="left-selector" value="qna">Q&A 확인</li>
					<li class="left-selector" onclick="location.href='/'">메인으로</li>
				</ul>
			</div>
		</div>
		<div class="contents">
			<div class="game-dashboard">
				<div class="contents-form inner">
					<div class="title title-form">게임 DashBoard</div>
					<div class="contents-inner game-dashboard-inner">
						<div class="game-selector">
							<div class="game-selector-inner inner">
								<div class="display-info center-align">
									<div class="inner-thin">
										<div class="display-info-title title-form center-align">금일 접속자 수</div>
										<div class="display-info-contents center-align"
											id="today-access-count"></div>
									</div>
								</div>
								<div class="display-info center-align">
									<div class="inner-thin">
										<div class="display-info-title title-form center-align">금일 게임시간 합계</div>
										<div class="display-info-contents center-align"
											id="today-sum-playtime"></div>
									</div>
								</div>
								<div class="display-info center-align">
									<div class="inner-thin">
										<div class="display-info-title title-form center-align">금일 게임시간 평균</div>
										<div class="display-info-contents center-align"
											id="today-avg-playtime"></div>
									</div>
								</div>
								<div class="display-info center-align">
									<div class="inner-thin">
										<div class="display-info-title title-form">전날 이용자 증감률</div>
										<div class="display-info-contents center-align"
											id="prev-day-access-count-rate"></div>
									</div>
								</div>
								<div class="display-info center-align">
									<div class="inner-thin">
										<div class="display-info-title title-form">전달 이용자 증감률</div>
										<div class="display-info-contents center-align"
											id="prev-month-access-count-rate"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="detail-dashboard">
							<div class="detail-dashboard-inner">
								<div class="access-count-display center-align">
									<div class="access-count-diplay-inner inner-fat">
										<div class="access-count-title title-form center-align">접속자 추이</div>
										<div class="access-count-contents">
											<div class="access-count">
												<canvas id="access-chart"></canvas>
											</div>
											<div class="dashboard-selector center-align">
												<button id="access-count-get-next" value="day">></button>
											</div>
										</div>
									</div>
								</div>
								<div class="detail-dashborad-bottom">
									<div class="playtime-display center-align">
										<div class="playtime-inner inner">
											<div class="playtime-title title-form center-align">게임 이용 시간</div>
											<div class="playtime-button-form">
												<button class="playtime-button" id="group-game">게임</button>
												<button class="playtime-button" id="group-gender">성별</button>
												<button class="playtime-button" id="group-age">나이</button>
												<input type="radio" value="sum" name="playtime-type" checked />합계
												<input type="radio" value="avg" name="playtime-type" />평균 <input
													type="radio" value="count" name="playtime-type" />총합
											</div>
											<div class="playtime center-align">
												<canvas id="playtime-chart"></canvas>
											</div>
										</div>
									</div>
									<div class="detail-dashboard-bottom-right center-align">
										<div class="game-detail-display inner">
											<div class="game-detail-display-title title title-form center-align">게임
												상세</div>
											<div class="game-detail-display-contents">
												<div class="dashboard-selector center-align">
													<button id="prev" class="game-detail-get" value="800006"><</button>
												</div>
												<div class="game-detail center-align">
													<div class="inner">
														<div class="game-detail-title title-form">
															<span id="game-title"></span> <span id="game-id"></span>
														</div>
														<div class="game-detail-contents">
															<div class="game-detail-daliy-access center-align">
																<div class="inner">
																	<div class="game-detail-inner-title title-form center-align">일주일간
																		유저 수 추이</div>
																	<div class="game-detail-inner-chart-contents">
																		<canvas id="game-detail-mau-chart"></canvas>
																	</div>
																</div>
															</div>
															<div class="game-detail-info">
																<div class="center-align">
																	<div class="inner-thin">
																		<div class="game-detail-inner-title title-form center-align">금일
																			유저 수</div>
																		<div
																			class="game-detail-inner-contents display-info-contents center-align"
																			id="daliy-access-count-game-detail"></div>
																	</div>
																</div>
																<div class="center-align">
																	<div class="inner-thin">
																		<div class="game-detail-inner-title title-form center-align">금일 총 게임시간</div>
																		<div class="game-detail-inner-contents center-align"
																			id="daliy-playtime-sum-game-detail"></div>
																	</div>
																</div>
															</div>
															<div class="game-detail-info">
																<div class="center-align">
																	<div class="inner-thin">
																		<div class="game-detail-inner-title title-form center-align">전날
																			이용자 증감률</div>
																		<div
																			class="game-detail-inner-contents display-info-contents center-align"
																			id="prev-day-game-access-rate-game-detail"></div>
																	</div>
																</div>
																<div class="center-align">
																	<div class="inner-thin">
																		<div class="game-detail-inner-title title-form center-align">전달
																			이용자 증감률</div>
																		<div
																			class="game-detail-inner-contents display-info-contents center-align"
																			id="prev-month-game-access-rate-game-detail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="dashboard-selector center-align">
													<button id="next" class="game-detail-get" value="800002">></button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="board-management">
				<div class="contents-form inner">
					<div class="title title-form">유저 관리</div>
					<div class="contents-inner board-management-inner">
						<div class="ban-list center-align">
							<div class="inner">
								<div class="qna-list-contents">
									<div class="qna-list-contents-inner">
										<table id="member-table">
											<tr>
												<th width="12%" height="50px">번호</th>
												<th width="32%">닉네임</th>
												<th width="33%">이메일</th>
												<th width="23%">가입 날짜</th>
											</tr>
										</table>
									</div>
								</div>
								<div class="page-navi-form">
									<div class="page-navi-inner" id="user-page-navi"></div>
								</div>
								<div class="qna-list-controller">
									<div class="inner center-align">
										<button class="check-ban" value="true">Ban Y</button>
										<button class="check-ban" value="false">Ban N</button>
										<button class="check-ban" value="whole">전체</button>
									</div>
								</div>
							</div>
						</div>
						<div class="management-contoroller center-align">
							<div class="inner">
								<div class="user-info center-align">
									<div class="inner-fat">
										<div class="user-info-title title title-form"
											id="user-nickname"></div>
										<table id="user-info-table">
											<tr>
												<th width="10%" height="50%">ID</th>
												<td width="25%" id="user-id"></td>
												<th width="10%">이메일</th>
												<td width="55%" id="user-email"></td>
											</tr>
											<tr>
												<th width="15%">가입 일자
												</th>
												<td width="20%" id="user-reg-date"></td>
												<th width="15%">차단 횟수</th>
												<td width="10%" id="user-ban-count"></td>
											</tr>
										</table>
									</div>
								</div>
								<div class="ban-list center-align">
									<div class="inner-fat">
										<div class="ban-list-title title-form center-align">차단 목록</div>
										<table id="ban-list-table">
											<tr>
												<th width="10%" height="50%">번호</th>
												<th width="20%">사유</th>
												<th width="70%">기간</th>
											</tr>
										</table>
										<div class="page-navi-form">
											<div class="page-navi-inner"></div>
										</div>
									</div>
								</div>
								<div class="ban-controller center-align">
									<div class="inner-fat">
										<div class="ban-detail-setting">
											<div
												class="ban-reason-controller controller-list center-align">
												<span> <select class="ban-select" id="reason-select">
														<option>광고</option>
														<option>분탕</option>
														<option>도배</option>
														<option>기분 나쁨</option>
														<option>영정</option>
														<option>기타</option>
												</select> <input type="text" placeholder="차단 사유" id="reason" value="광고" disabled>
												</span>
											</div>
											<div
												class="ban-end-date-controller controller-list center-align">
												<span> <select class="ban-select"
													id="end-date-select" disabled>
														<option value="720">30일</option>
														<option value="72">3일</option>
														<option value="168">7일</option>
														<option value="1">1시간</option>
														<option value="-1">없음</option>
														<option value="0">기타</option>
												</select> <input type="text" value="30일" placeholder="차단 기간을 설정하십시오(시간 단위)"
													id="end-date" disabled>
												</span>
											</div>
										</div>
										<div class="ban-button center-align"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="qna">
				<div class="contents-form inner">
					<div class="title title-form">질문글</div>
					<div class="contents-inner qna-inner">
						<div class="qna-list">
							<div class="inner">
								<div class="qna-list-contents">
									<div class="qna-list-contents-inner">
										<table id="qna-table">
											<tr>
												<th width="10%" height="5%">번호</th>
												<th width="50%">내용</th>
												<th width="20%">작성자</th>
												<th width="20%">작성 시간</th>
											</tr>
										</table>
									</div>
								</div>
								<div class="page-navi-form">
									<div class="page-navi-inner" id="qna-list-page-navi"></div>
								</div>
								<div class="qna-list-controller">
									<div class="inner center-align">
										<div>
											<button class="check-response-yn" value="y">답변 Y</button>
											<button class="check-response-yn" value="n">답변 N</button>
											<button class="check-response-yn allbtn" value="whole">전체</button>
										</div>
										<div>
											<select id="qna-search-conditions-select">
												<option value="writer">작성자</option>
												<option value="contents">내용</option>
											</select> <input type="text" placeholder="검색할 내용을 입력하세요"
												id="qna-search-key">
											<button id="qna-search">검색</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="qna-respone">
							<div class="inner">
								<div class="qna-title">
									<div class="qna-title-inner" id="qna-contents-responseYN"></div>
								</div>
								<div class="qna-contents">
									<div class="qna-contents-inner">
										<table style="height: 95%;">
											<tr>
												<th width="10%" height="8%">번호</th>
												<td width="10%" id="qna-contents-id"></td>
												<th width="10%">작성자</th>
												<td width="15%" id="qna-contents-writer"></td>
												<th width="15%">등록 날짜</th>
												<td width="20%" id="qna-contents-reg-date"></td>
											</tr>
											<tr>
												<td colspan="6">
													<div id="qna-contents-contents"></div>
												</td>
											</tr>
										</table>
										<div class="qna-contents-button">
											<button id="qna-delete" disabled>삭제</button>
										</div>
									</div>
								</div>
								<div class="qna-reply">
									<div class="qna-reply-inner">
										<div class="qna-reply-contents"></div>
										<div class="qna-reply-controller"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
<script>
function Dataset() {
	this.data = [];
	this.label = [];
	
	this.update = function(chart, target, item) {
		const index = this.label.indexOf(target);
		console.log(index);
		
		this.data[index] = item;
		chart.update();
	}
	
	this.push = function(dto) {
		this.data.push(dto.data);
		this.label.push(dto.label);
	}
	
	this.init = function() {
		this.data = [];
		this.label = [];
	}
}

function displayRate(data, target) {
	if(data < 0) {
		target.css('color', 'blue');
	} else {
		target.css('color', 'red');
	}
	
	target.html(data + "%");
}

function gameDetailinit() {
	$('.game-detail-title>span').html('');
	$('.game-detail-inner-contents').html('');
}

function gameDetailCahrtSet(dataset) {
	return new Chart($('#game-detail-mau-chart'), {
		type: 'line',
		data: {
			labels: dataset.lebal,
			datasets: [{
				label: '일일 이용자 수',
				data: dataset.data
			}]
		}
	});
}

    $('.left-selector').on('click', function () {
        const select = $(this).attr('value');
        const offset = $('.' + select).offset();

        $('html, body').animate({ scrollTop: offset.top }, 500);
    });

    function makePageNavi(dto, className) {
        $('.' + className).remove();
        $('.' + className).off('click');
        
        console.log(dto);

        const pageNavi = $('<div>').addClass('pageNavi');
        pageNavi.css({
            'width': 'fit-content',
            'height': 'fit-content'
        });

        function makeSpan(content, index) {
            const span = $('<span>').html(content).addClass('page');
            span.attr('value', index);
            return span;
        }

        if (!dto.isFirst) {
            pageNavi.append(makeSpan('이전', dto.startNavi - 1).addClass(className).attr('tag', 'prev'));
        }

        for (let i = dto.startNavi; i <= dto.endNavi; i++) {
            pageNavi.append(makeSpan(i, i).addClass(className));
        }

        if (!dto.isEnd) {
            pageNavi.append(makeSpan('다음', dto.endNavi + 1).addClass(className).attr('tag', 'next'));
        }

        const indexCss = '.page {font-size: 20px; width: 50px; height: 50px; padding-left: 5px; padding-right: 5px;}'
        const hover = '.page:hover { cursor: pointer; }'

        $('style').append(hover).append(indexCss);

        return pageNavi;
    }

    window.onload = function () {
    	$.ajax({
    		url: '/service/admin/playtime/search/today.do?type=sum',
    		type: 'GET'
    	}).done(function (data) {
    		$('#today-sum-playtime').html(data);
    	});
    	
    	$.ajax({
    		url: '/service/admin/playtime/search/today.do?type=avg',
    		type: 'GET'
    	}).done(function (data) {
    		$('#today-avg-playtime').html(data);
    	});
    	
    	$.ajax({
    		url: '/service/admin/playtime/search/today.do?type=count',
    		type: 'GET'
    	}).done(function (data) {
    		$('#today-access-count').html(data + '명');
    	});
    	
    	$.ajax({
    		url: '/service/admin/playtime/rate.do?range=day',
    		type: 'GET'
    	}).done(function(data) {
    		displayRate(data, $('#prev-day-access-count-rate'));
    	});
    	
    	$.ajax({
    		url: '/service/admin/playtime/rate.do?range=month',
    		type: 'GET'
    	}).done(function(data) {
    		displayRate(data, $('#prev-month-access-count-rate'));
    	});
    	
    	$.ajax({
    		url: '/service/admin/playtime/serach/today/game.do?type=count&id=' + 800001,
    		type: 'GET'
    	}).done(function(data) {
    		$('#daliy-access-count-game-detail').html(data + "명");
    	});
    	
    	$.ajax({
    		url: '/service/admin/playtime/serach/today/game.do?type=sum&id=' + 800001,
    		type: 'GET'
    	}).done(function(data) {
    		console.log(data);
    		$('#daliy-playtime-sum-game-detail').html(data);
    	});
    	
    	$.ajax({
    		url: '/service/admin/playtime/rate/game.do?range=day&id=' + 800001
    	}).done(function(data) {
    		displayRate(data, $('#prev-day-game-access-rate-game-detail'));
    	});
    	
    	$.ajax({
    		url: '/service/admin/playtime/rate/game.do?range=month&id=' + 800001
    	}).done(function(data) {
    		displayRate(data, $('#prev-month-game-access-rate-game-detail'));
    	});
    	
    	$.ajax({
    		url: '/game/detail.do?id=800001'
    	}).done(function(data) {
    		data = JSON.parse(data);
    		
    		$('#game-title').html(data.gameName);
    		$('#game-id').html("ID: (" + data.gameId + ")");
    	});

        let accessCountDataset = [];
        const sumGamePlayDataset = new Dataset();
        const gameDetailMauDataset = new Dataset();
        let accessCountChart, sumGamePlayChart, gameDetailMauChart;
        $.ajax({
        	url: '/service/admin/playtime/search/days.do?group=day',
        	type: 'GET'
        }).done(function(data) {
        	data = JSON.parse(data);
        	
        	const keys = Object.keys(data);
        	for(let i = 0; i < keys.length; i++) {
        		const key = keys[i];
        		
        		const dataset = new Dataset();
        		for (let j = 0; j < data[key].length; j++) {
        			dataset.push(data[key][j]);
        		}
        		
        		accessCountDataset.push(dataset);
        	}
        	
        	accessCountChart = new Chart($('#access-chart'), {
               	
                data: {
                  	labels: accessCountDataset[0].label,
                  	datasets: [{
                  		type: 'bar',
                        label: '이용 시간 평균',
                        data: accessCountDataset[0].data,
                        yAxisID: "y-avg"
                      }, {
                    	  type: 'line',
                      	label: '사용자 수',
                      	data: accessCountDataset[1].data,
                      	yAxisID: "y-count"
                      }, {
                    	type: 'bar',
                      	label: '이용 시간 총합',
                      	data: accessCountDataset[2].data,
                      	 yAxisID: "y-sum"
                      }
                  ]},
                 options: {
                	 responsive: true,  
                     maintainAspectRatio: false,
                     scales: {
                    	 x: {
                    	      grid: { // 축에 대한 격자선
                    	        display: false, // grid 활성화 (기본값 true)
                    	      }
                    	  },
                         "y-sum": {
                             type: "logarithmic",  // 로그 스케일 적용
                             position: "left",
                             ticks: {
                                 min: 1,
                                 max: 1000
                             }
                         },
                         "y-count": {
                        	 type: "linear",
                             position: "right",  
                             grid: {
                                 drawOnChartArea: false  
                             },
                             ticks: {
                                 beginAtZero: true
                             }
                         },
                         "y-avg": {
                        	 type: "linear",
                             position: "right",  
                             grid: {
                                 drawOnChartArea: false  
                             },
                             ticks: {
                                 beginAtZero: true
                             }
                         }
                     }   
                 }
           	});
        		
        }); 
        
        $.ajax({
        	url: '/service/admin/playtime/search.do?type=' + $('input[name=playtime-type]:checked').val() + '&group=game',
        	type: 'GET'
        }).done(function(data) {
        	data = JSON.parse(data);
        	
        	for(let i = 0; i < data.length; i++) {
        		sumGamePlayDataset.push(data[i]);
        	}
        	
        	sumGamePlayChart = new Chart($('#playtime-chart'), {
        		type: 'doughnut',
        		data: {
        			labels: sumGamePlayDataset.label,
                    datasets: [
                      {
                        label: 'Dataset',
                        data: sumGamePlayDataset.data,
                    	}
                	]
            	}
        	});
        });
        
        $.ajax({
        	url: '/service/admin/playtime/days/game.do?id=' + 800001
        }).done(function(data) {
        	data = JSON.parse(data);
        	
        	for(let i = 0; i < data.length; i++) {
        		gameDetailMauDataset.push(data[i]);
        	}
        	
        	gameDetailMauChart = new Chart($('#game-detail-mau-chart'), {
        		type: 'line',
        		data: {
        			labels: gameDetailMauDataset.label,
                    datasets: [
                      {
                        label: '일일 이용자 수',
                        data: gameDetailMauDataset.data,
                    	}
                	]
            	},
            	options: {
               	 responsive: true,  
                    maintainAspectRatio: false,
            	}
        	});
        });
        
        $('#access-count-get-next').on('click', function() {       
        	const group = ($(this).val() == 'day') ? 'month' : 'day';
        	$(this).val(group);	
        	let url = '/service/admin/playtime/search/days.do?group=' + group;
        	
            $.ajax({
            	url: url,
            	type: 'GET'
            }).done(function(data) {
            	data = JSON.parse(data);
            	accessCountDataset = [];
            	accessCountChart.destroy();
            	
            	const keys = Object.keys(data);
            	for(let i = 0; i < keys.length; i++) {
            		const key = keys[i];

            		const dataset = new Dataset();
            		for (let j = 0; j < data[key].length; j++) {
            			dataset.push(data[key][j]);
            		}
            		
            		accessCountDataset.push(dataset);
            	}
            	
            	accessCountChart = new Chart($('#access-chart'), {
                    data: {
                      	labels: accessCountDataset[0].label,
                      	datasets: [{
		                   	type: 'bar',
                          	label: '이용 시간 평균',
                          	data: accessCountDataset[0].data,
                          	yAxisID: "y-avg"
                        }, {
                        	type: 'line',
                        	label: '사용자 수',
                        	data: accessCountDataset[1].data,
                        	yAxisID: "y-count"
                        }, {
                        	type: 'bar',
                        	label: '이용 시간 총합',
                        	data: accessCountDataset[2].data,
                        	 yAxisID: "y-sum"
                        }
                      ]},
                     options: {
                    	 responsive: true,  
                         maintainAspectRatio: false,
                         scales: {
                        	 x: {
                        	      grid: { // 축에 대한 격자선
                        	        display: false, // grid 활성화 (기본값 true)
                        	      }
                        	  },
                             "y-sum": {
                                 type: "logarithmic",  // 로그 스케일 적용
                                 position: "left",
                                 ticks: {
                                     min: 1,
                                     max: 100000
                                 }
                             },
                             "y-count": {
                            	 type: "linear",
                                 position: "right",  
                                 grid: {
                                     drawOnChartArea: false  
                                 },
                                 ticks: {
                                     beginAtZero: true
                                 }
                             },
                             "y-avg": {
                            	 type: "linear",
                                 position: "right",  
                                 grid: {
                                     drawOnChartArea: false  
                                 },
                                 ticks: {
                                     beginAtZero: true
                                 }
                             }
                         }
                     }
               	});
            		
            }); 
        });
        
        $('.playtime-button').on('click', function () {
            let url = '/service/admin/playtime/search.do?type=' + $('input[name=playtime-type]:checked').val() + '&group=';
            const id = $(this).attr('id');
            
            if (id == 'group-game') {
                url += 'game';
            } else if (id == 'group-gender') {
                url += 'gender';
            } else if (id == 'group-age') {
                url += 'age';
            }
            
            console.log(url);
            
            $.ajax({
            	url: url,
            	type: 'GET'
            }).done(function(data) {
            	data = JSON.parse(data);
            	sumGamePlayDataset.init();
            	
            	for(let i = 0; i < data.length; i++) {
            		sumGamePlayDataset.push(data[i]);
            	}
            	
            	sumGamePlayChart.destroy();
            	sumGamePlayChart = new Chart($('#playtime-chart'), {
            		type: 'doughnut',
            		data: {
            			labels: sumGamePlayDataset.label,
                        datasets: [
                          {
                            label: 'Dataset',
                            data: sumGamePlayDataset.data,
                        	}
                    	]
                	}
            	});
            })
        });
        
        $('.game-detail-get').on('click', function() {
        	const id = $(this).attr('id');
        	const value = $(this).val();
        	
        	if(id == 'next') {
        		if(value == "800006") {
        			$(this).val('800001');
        		} else {
        			$(this).val(Number(value) + 1);
        		}
        		
        		if(value == "800001") {
	        		$('#prev').val("800006");
        		} else {
        			$('#prev').val(Number(value) - 1);
        		}
        	} else {
        		if(value == '800001') {
        			$(this).val('800006');
        		} else {
        			$(this).val(Number(value) - 1);
        		}
        		
        		if(value == "800006") {
	        		$('#next').val("800001");
        		} else {
        			$('#next').val(Number(value) + 1);
        		}
        	}
        	
        	gameDetailinit();
            
            $.ajax({
            	url: '/service/admin/playtime/days/game.do?id=' + value
            }).done(function(data) {
            	data = JSON.parse(data);
            	gameDetailMauDataset.init();
            	
            	for(let i = 0; i < data.length; i++) {
            		gameDetailMauDataset.push(data[i]);
            	}
            	
            	gameDetailMauChart.destroy();
            	gameDetailMauChart = new Chart($('#game-detail-mau-chart'), {
            		type: 'line',
            		data: {
            			labels: gameDetailMauDataset.label,
                        datasets: [
                          {
                            label: '일일 이용자 수',
                            data: gameDetailMauDataset.data,
                        	}
                    	]
                	},
                	options: {
                   	 responsive: true,  
                        maintainAspectRatio: false,
                	}
            	});
            });
        	
        	$.ajax({
        		url: '/service/admin/playtime/serach/today/game.do?type=count&id=' + value,
        		type: 'GET'
        	}).done(function(data) {
        		$('#daliy-access-count-game-detail').html(data + "명");
        	});
        	
        	$.ajax({
        		url: '/service/admin/playtime/serach/today/game.do?type=sum&id=' + value,
        		type: 'GET'
        	}).done(function(data) {
        		console.log(data);
        		$('#daliy-playtime-sum-game-detail').html(data);
        	});
        	
        	$.ajax({
        		url: '/service/admin/playtime/rate/game.do?range=day&id=' + value,
        		type: 'GET'
        	}).done(function(data) {
        		displayRate(data, $('#prev-day-game-access-rate-game-detail'));
        	});
        	
        	$.ajax({
        		url: '/service/admin/playtime/rate/game.do?range=month&id=' + value,
        		type: 'GET'
        	}).done(function(data) {
        		displayRate(data, $('#prev-month-game-access-rate-game-detail'));
        	});
        	
        	$.ajax({
        		url: '/game/detail.do?id=' + value
        	}).done(function(data) {
        		data = JSON.parse(data);
        		
        		$('#game-title').html(data.gameName);
        		$('#game-id').html("ID: (" + data.gameId + ")");
        	});
        });
        
        $.ajax({
        	url: '/service/member/list.do?page=1',
        	type: 'GET'
        }).done(function(data) {
        	data = JSON.parse(data);
        	
        	makeUserList(data.members);
        	makeUserPageNavi(data, '/service/member/list.do?page=');
        });
        
        $.ajax({
            url: '/qna/list.do?page=1',
            type: 'GET'
        }).done(function (data) {
            data = JSON.parse(data);

            makeQnAList(data.qnaList);
           	makeQnaPageNavi(data, '/qna/list.do?page=');
        });
    }

	function makeUserList(dto) {
		$('.user-item').remove();
		
		for (let i = 0; i < dto.length; i++) {
			const data = dto[i];
			const tr = $('<tr>').addClass('user-item');
			
			const nickName = $('<td>').html(data.nickName);
			
			tr.append($('<td>').html(data.memberId));
			tr.append(nickName);
			tr.append($('<td>').html(data.email));
			tr.append($('<td>').html(data.regDate));
			
			$('#member-table').append(tr);
			
			nickName.on('click', function() {
				setUserData(data);
			});
		}
	}
	
	function makeUserPageNavi(data, url) {
    	$('#user-page-navi').append(makePageNavi(data.pageNavi, 'user-page-navi'));
    	$('.user-page-navi').on('click', function() {
    		const clicked = $(this);
    		
    		$.ajax({
    			url: url + clicked.attr('value'),
    			type: 'GET'
    		}).done(function(data) {
    			data = JSON.parse(data);
    			makeUserList(data.members);
    			console.log(clicked.attr('value'));
    			console.log(clicked.attr('tag'));
    		
    			if(typeof clicked.attr('tag') != 'undefined') {
    				$('#user-page-navi').append(makePageNavi(data.pageNavi, 'user-page-navi'));
    				makeUserPageNavi(data, url);
    			}
    		});
    	})
	}
	
	function setUserData(item) {
		$('.ban-button').html('');
		
		let button = $('<button>');
		$('#user-nickname').html(item.nickName);
		$('#user-id').html(item.memberId);
		$('#user-email').html(item.email);
		$('#user-reg-date').html(item.regDate);
		
		$.ajax({
			url: '/service/member/banned/search.do?id=' + item.memberId,
		}).done(function(data) {
			data = JSON.parse(data);
			
			if(data) {
				let detail = '(현재 차단 중 ';
				
				$.ajax({
					url:'/service/member/ban/detail.do?id=' + item.memberId
				}).done(function(data) {
					data = JSON.parse(data);
					console.log(data);
					detail += '사유: ' + data.reason + "<br> 기간: ~" + data.endDate + ")";
					
					console.log(detail);
					$('#user-nickname').append($('<span>').html(detail).addClass('isBaaned-display'));
				});
				
				button.html('차단 해제').attr('id', 'ban-out');
			} else {
				button.html('차단').attr('id', 'ban');
			}
			
			$('.ban-button').append(button);
			
			button.on('click', function() {
				const id = $(this).attr('id');
				
				if (id == 'ban') {
					const reason = $('#reason').val();
					let endDate = ($('#end-date-select option:selected').val() == 0) ?
							$('#end-date').val() : $('#end-date-select option:selected').val();
					
					if(reason == null || endDate == null) {
						alert('차단 설정을 해주십시오.');
						return;
					}
					var csrfToken = $('meta[name="csrf-token"]').attr('content');
					
					$.ajax({
						url: '/service/member/ban/add.do',
						type: 'POST',
						data: {
							memberId: item.memberId,
							reason: reason,
							endDate: endDate,
							csrfToken: csrfToken
						}
					}).done(function(data) {
						alert("차단되었습니다.");
					})
				} else {
					$.ajax({
						url: '/service/member/ban/delete.do?id=' + item.memberId,
						type: 'GET'
					}).done(function(data) {
						alert("차단이 해제되었습니다.");
					});
				}
			})
		});
		
		$.ajax({
			url: '/service/member/ban/count.do?id=' + item.memberId,
			type: 'GET'
		}).done(function(data) {
			$('#user-ban-count').html(data);
		});
		
		$.ajax({
			url: '/service/member/ban/list.do?id=' + item.memberId,
			type: 'GET'	
		}).done(function(data) {
			data = JSON.parse(data);
			console.log(data);
			
			$('.ban-list-item').remove();
			for(let i = 0; i < data.length; i++) {				
				const tr = $('<tr>').addClass('ban-list-item');
				
				tr.append($('<td>').html(data[i].blackId));
				tr.append($('<td>').html(data[i].reason));
				tr.append($('<td>').html(data[i].startDate + " - " + data[i].endDate));
				
				$('#ban-list-table').append(tr);
			}
			
		});
	}
	
	$('#reason-select').on('change', function() {
		const index = $('#reason-select option').index($('#reason-select option:selected'));
		$('#end-date-select option:eq(' + index + ')').prop("selected", true);
		
		const endDate = $('#end-date-select option:selected').val();
		
		$('#reason').val($('#reason-select option:selected').html());
		$('#end-date').val($('#end-date-select option:selected').html());
		
		if($('#end-date').val() == "기타") {
			$('#end-date').val('');
			$('#end-date').focus();
		}
		
		if(endDate == 0) {
			$('#reason').attr('disabled', false);
			$('#end-date').attr('disabled', false);
		}
	});
	
	$('.check-ban').on('click', function() {
		const value = $(this).val();
		
		console.log(value);	
		
		let url;
		if (value == 'whole') {
			url = "/service/member/list.do?page=";
		} else {
			url = "/service/member/isbanned/list.do?ban=" + value + "&page=";
		}
		
		$.ajax({
			url: url + '1',
			type: 'GET'
		}).done(function(data) {
			data = JSON.parse(data);
			console.log(data);
			
			makeUserList(data.members);
        	makeUserPageNavi(data, url);
		})
	});

    $('.check-response-yn').on('click', function () {
        const url = ($(this).val() == 'whole') ? "/qna/list.do?page=" : "/qna/list/response_yn.do?response_yn=" + $(this).val() + "&page=";

        console.log(url);
        $.ajax({
            url: url + '1',
            type: 'GET'
        }).done(function (data) {
            data = JSON.parse(data);
            makeQnAList(data.qnaList);
            makeQnaPageNavi(data, url);
        })
    });

    $('#qna-search').on('click', function () {
        const searchKey = $('#qna-search-key').val();
        const select = $('#qna-search-conditions-select :selected').val();
        const url = '/qna/list/search.do?conditions=' + select + '&search-key=' + searchKey + "&page=";

        console.log(url);
        $.ajax({
            url: url + '1',
            type: 'GET'
        }).done(function (data) {
            data = JSON.parse(data);
            makeQnAList(data.qnaList);
            makeQnaPageNavi(data, url);
        });
    });

    $('#qna-delete').on('click', function () {
        const url = '/qna/delete.do?id=' + $('#qna-contents-id').html();

        if (confirm("해당 질문글을 삭제하시겠습니까?")) {
            $.ajax({
                url: url,
                type: 'GET'
            }).done(function () {
                alert('삭제했습니다.');
                initQnAContents();

                $.ajax({
                    url: '/qna/list.do?page=1',
                    type: 'GET'
                }).done(function (data) {
                    data = JSON.parse(data);
                    makeQnAList(data.qnaList);
                    makeQnaPageNavi(data, url);
                });
            });
        }
    });

    function makeQnAList(dto) {
        $('.qna-item').remove();

        if (dto.length == 0) {
            $('#qna-table>tbody').append(
                $('<tr height="95%">').addClass('qna-item').append($('<td colspan="4">').html('질문 글이 없습니다.')));
        }

        for (let i = 0; i < dto.length; i++) {
            const tr = $('<tr>').addClass('qna-item');
            const currentDTO = dto[i];

            let responseState, responseClass;
            if (currentDTO.responseYn == 'N') {
                responseState = "미응답";
                responseClass = 'qna-response-n';
            } else {
                responseState = "응답완료";
                responseClass = 'qna-response-y';
            }

            let contentsHTML = (currentDTO.contents.length > 15) ? currentDTO.contents.substr(3, 11 - 2) + "..." : currentDTO.contents;

            const contents = $('<td>').html(responseState + " " + contentsHTML).attr('value', currentDTO.qnaId);

            tr.append($('<td>').html(currentDTO.qnaId));
            tr.append(contents);
            tr.append($('<td>').html(currentDTO.writer));
            tr.append($('<td>').html(currentDTO.regDate));

            tr.addClass(responseClass);
            $('#qna-table>tbody').append(tr);

            contents.on('click', function () {
                let url = '/qna/board.do?id=' + contents.attr('value');
                console.log(url);

                setQnAContents(currentDTO);
            });
        }

        $('style').append('.qna-item:hover {cursor:pointer;}')
    }
    
    function makeQnaPageNavi(data, url) {
    	$('#qna-list-page-navi').append(makePageNavi(data.pageNavi, 'qna-page-navi'));
    	$('.qna-page-navi').on('click', function() {
    		const clicked = $(this);
		
			$.ajax({
				url: url + clicked.attr('value'),
				type: 'GET'
			}).done(function(data) {
				data = JSON.parse(data);
				makeQnAList(data.qnaList);

				if(typeof clicked.attr('tag') != 'undefined') {
					$('#qna-list-page-navi').append(makePageNavi(data.pageNavi, 'qna-page-navi'));
					makeQnAPageNavi(data, url);
				}
			});
		})
    }

    function setQnAContents(item) {
        $('#qna-contents-title').html(item.responseYn);
        $('#qna-contents-id').html(item.qnaId);
        $('#qna-contents-writer').html(item.writer);
        $('#qna-contents-reg-date').html(item.regDate);
        $('#qna-contents-contents').html(item.contents);

        $('#qna-delete').attr('disabled', false);

        setButton(item.responseYn);

        if (item.responseYn == 'Y') {
            console.log('/qna_reply/board/qna.do?id=' + item.qnaId);

            $.ajax({
                url: '/qna_reply/board/qna.do?id=' + item.qnaId,
                type: 'GET'
            }).done(function (data) {
                data = JSON.parse(data);
                console.log(data);

                makeQnAReplyContent(data);
            });
        }
    }

    function initQnAContents() {
        $('#qna-contents-title').html('');
        $('#qna-contents-id').html('');
        $('#qna-contents-writer').html('');
        $('#qna-contents-reg-date').html('');
        $('#qna-contents-contents').html('');

        $('#qna-delete').attr('disabled', true);
        $('.qna-reply-controller').html('');
        $('.qna-reply-contents').html('');
    }

    function makeQnAReplyContent(item) {
        const div = $('<div>').addClass('qna-reply-item');
        div.append($('<div>').html(item.writer + "의 답변입니다.").addClass('qna-reply-writer'));
        div.append($('<div>').html("답변 시간: " + item.regDate).addClass('qna-reply-regDate'));
        div.append($('<div>').html(item.context).addClass('qna-reply-context'));
        div.css({'margin-top': '60px',
        		'border-top': '1px solid black',
        		'padding-top': '10px'});

       $('#qna-contents-contents').append(div);
       $('.qna-reply-contents').html(item.context);
    }

    function setButton(responseYN) {
        let buttonHTML, url;

        $('.qna-reply-controller').html('');

        const data = {};
        if (responseYN == 'Y') {
            buttonHTML = '답글 수정하기';
            url = '/qna_reply/update.do';
        } else {
            buttonHTML = '답글 등록하기';
            url = '/qna_reply/add.do';
        }
        data.qnaId = $('#qna-contents-id').html();
        $('.qna-reply-contents').attr('contenteditable', true);
        
        const button = $('<button>');

        $('.qna-reply-controller').append(
            button.html(buttonHTML));

        button.on('click', function () {
        	var csrfToken = $('meta[name="csrf-token"]').attr('content');
            data.context = $('.qna-reply-contents').html();
            data.csrfToken = csrfToken;
            console.log(url, data);
            $.ajax({
                url: url,
                data: data,
                type: 'POST'
            }).done(function (data) {
                $.ajax({
                    url: '/qna/list.do?page=1',
                    type: 'GET'
                }).done(function (data) {
                    $('.qna-reply-contents').attr('contenteditable', false);

                    data = JSON.parse(data);
                    makeQnAList(data.qnaList);
                    makeQnaPageNavi(data, '/qna/list.do?page=');
                    initQnAContents();
                })
            });
        });
    }
</script>