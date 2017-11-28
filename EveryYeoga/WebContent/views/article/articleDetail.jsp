<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Verti by HTML5 UP</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" type="text/css" href="main.css" />

<script type="text/javascript">
	function button_event() {
		if (confirm("정말 삭제하시겠습니까??") == true) { //확인
			document.form.submit();
		} else { //취소
			return;
		}
	}
</script>

<style type="text/css">


	html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
		margin: 0;
		padding: 0;
		border: 0;
		font-size: 100%;
		font: inherit;
		vertical-align: baseline;
	}

	article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
		display: block;
	}

	body {
		line-height: 1;
	}

	ol, ul {
		list-style: none;
	}

	blockquote, q {
		quotes: none;
	}

	blockquote:before, blockquote:after, q:before, q:after {
		content: '';
		content: none;
	}

	table {
		border-collapse: collapse;
		border-spacing: 0;
	}

	body {
		-webkit-text-size-adjust: none;
	}

/* Box Model */

	*, *:before, *:after {
		-moz-box-sizing: border-box;
		-webkit-box-sizing: border-box;
		box-sizing: border-box;
	}

/* Containers */

	.container {
		margin-left: auto;
		margin-right: auto;
	}

	.container.\31 25\25 {
		width: 100%;
		max-width: 1750px;
		min-width: 1400px;
	}

	.container.\37 5\25 {
		width: 1050px;
	}

	.container.\35 0\25 {
		width: 700px;
	}

	.container.\32 5\25 {
		width: 350px;
	}

	.container {
		width: 1400px;
	}

	@media screen and (max-width: 1680px) {

		.container.\31 25\25 {
			width: 100%;
			max-width: 1500px;
			min-width: 1200px;
		}

		.container.\37 5\25 {
			width: 900px;
		}

		.container.\35 0\25 {
			width: 600px;
		}

		.container.\32 5\25 {
			width: 300px;
		}

		.container {
			width: 1200px;
		}

	}

	@media screen and (max-width: 1280px) {

		.container.\31 25\25 {
			width: 100%;
			max-width: 1200px;
			min-width: 960px;
		}

		.container.\37 5\25 {
			width: 720px;
		}

		.container.\35 0\25 {
			width: 480px;
		}

		.container.\32 5\25 {
			width: 240px;
		}

		.container {
			width: 960px;
		}

	}

	@media screen and (max-width: 980px) {

		.container.\31 25\25 {
			width: 100%;
			max-width: 112.5%;
			min-width: 90%;
		}

		.container.\37 5\25 {
			width: 67.5%;
		}

		.container.\35 0\25 {
			width: 45%;
		}

		.container.\32 5\25 {
			width: 22.5%;
		}

		.container {
			width: 90% !important;
		}

	}

	@media screen and (max-width: 736px) {

		.container.\31 25\25 {
			width: 100%;
			max-width: 125%;
			min-width: 100%;
		}

		.container.\37 5\25 {
			width: 75%;
		}

		.container.\35 0\25 {
			width: 50%;
		}

		.container.\32 5\25 {
			width: 25%;
		}

		.container {
			width: 100% !important;
		}

	}

/* Grid */

	.row {
		border-bottom: solid 1px transparent;
		-moz-box-sizing: border-box;
		-webkit-box-sizing: border-box;
		box-sizing: border-box;
	}

	.row > * {
		float: left;
		-moz-box-sizing: border-box;
		-webkit-box-sizing: border-box;
		box-sizing: border-box;
	}

	.row:after, .row:before {
		content: '';
		display: block;
		clear: both;
		height: 0;
	}

	.row.uniform > * > :first-child {
		margin-top: 0;
	}

	.row.uniform > * > :last-child {
		margin-bottom: 0;
	}

	.row.\30 \25 > * {
		padding: 0px 0 0 0px;
	}

	.row.\30 \25 {
		margin: 0px 0 -1px 0px;
	}

	.row.uniform.\30 \25 > * {
		padding: 0px 0 0 0px;
	}

	.row.uniform.\30 \25 {
		margin: 0px 0 -1px 0px;
	}

	.row > * {
		padding: 40px 0 0 40px;
	}

	.row {
		margin: -40px 0 -1px -40px;
	}

	.row.uniform > * {
		padding: 40px 0 0 40px;
	}

	.row.uniform {
		margin: -40px 0 -1px -40px;
	}

	.row.\32 00\25 > * {
		padding: 80px 0 0 80px;
	}

	.row.\32 00\25 {
		margin: -80px 0 -1px -80px;
	}

	.row.uniform.\32 00\25 > * {
		padding: 80px 0 0 80px;
	}

	.row.uniform.\32 00\25 {
		margin: -80px 0 -1px -80px;
	}

	.row.\31 50\25 > * {
		padding: 60px 0 0 60px;
	}

	.row.\31 50\25 {
		margin: -60px 0 -1px -60px;
	}

	.row.uniform.\31 50\25 > * {
		padding: 60px 0 0 60px;
	}

	.row.uniform.\31 50\25 {
		margin: -60px 0 -1px -60px;
	}

	.row.\35 0\25 > * {
		padding: 20px 0 0 20px;
	}

	.row.\35 0\25 {
		margin: -20px 0 -1px -20px;
	}

	.row.uniform.\35 0\25 > * {
		padding: 20px 0 0 20px;
	}

	.row.uniform.\35 0\25 {
		margin: -20px 0 -1px -20px;
	}

	.row.\32 5\25 > * {
		padding: 10px 0 0 10px;
	}

	.row.\32 5\25 {
		margin: -10px 0 -1px -10px;
	}

	.row.uniform.\32 5\25 > * {
		padding: 10px 0 0 10px;
	}

	.row.uniform.\32 5\25 {
		margin: -10px 0 -1px -10px;
	}

	.\31 2u, .\31 2u\24 {
		width: 100%;
		clear: none;
		margin-left: 0;
	}

	.\31 1u, .\31 1u\24 {
		width: 91.6666666667%;
		clear: none;
		margin-left: 0;
	}

	.\31 0u, .\31 0u\24 {
		width: 83.3333333333%;
		clear: none;
		margin-left: 0;
	}

	.\39 u, .\39 u\24 {
		width: 75%;
		clear: none;
		margin-left: 0;
	}

	.\38 u, .\38 u\24 {
		width: 66.6666666667%;
		clear: none;
		margin-left: 0;
	}

	.\37 u, .\37 u\24 {
		width: 58.3333333333%;
		clear: none;
		margin-left: 0;
	}

	.\36 u, .\36 u\24 {
		width: 50%;
		clear: none;
		margin-left: 0;
	}

	.\35 u, .\35 u\24 {
		width: 41.6666666667%;
		clear: none;
		margin-left: 0;
	}

	.\34 u, .\34 u\24 {
		width: 33.3333333333%;
		clear: none;
		margin-left: 0;
	}

	.\33 u, .\33 u\24 {
		width: 25%;
		clear: none;
		margin-left: 0;
	}

	.\32 u, .\32 u\24 {
		width: 16.6666666667%;
		clear: none;
		margin-left: 0;
	}

	.\31 u, .\31 u\24 {
		width: 8.3333333333%;
		clear: none;
		margin-left: 0;
	}

	.\31 2u\24 + *,
	.\31 1u\24 + *,
	.\31 0u\24 + *,
	.\39 u\24 + *,
	.\38 u\24 + *,
	.\37 u\24 + *,
	.\36 u\24 + *,
	.\35 u\24 + *,
	.\34 u\24 + *,
	.\33 u\24 + *,
	.\32 u\24 + *,
	.\31 u\24 + * {
		clear: left;
	}

	.\-11u {
		margin-left: 91.66667%;
	}

	.\-10u {
		margin-left: 83.33333%;
	}

	.\-9u {
		margin-left: 75%;
	}

	.\-8u {
		margin-left: 66.66667%;
	}

	.\-7u {
		margin-left: 58.33333%;
	}

	.\-6u {
		margin-left: 50%;
	}

	.\-5u {
		margin-left: 41.66667%;
	}

	.\-4u {
		margin-left: 33.33333%;
	}

	.\-3u {
		margin-left: 25%;
	}

	.\-2u {
		margin-left: 16.66667%;
	}

	.\-1u {
		margin-left: 8.33333%;
	}

	@media screen and (max-width: 1680px) {

		.row > * {
			padding: 40px 0 0 40px;
		}

		.row {
			margin: -40px 0 -1px -40px;
		}

		.row.uniform > * {
			padding: 40px 0 0 40px;
		}

		.row.uniform {
			margin: -40px 0 -1px -40px;
		}

		.row.\32 00\25 > * {
			padding: 80px 0 0 80px;
		}

		.row.\32 00\25 {
			margin: -80px 0 -1px -80px;
		}

		.row.uniform.\32 00\25 > * {
			padding: 80px 0 0 80px;
		}

		.row.uniform.\32 00\25 {
			margin: -80px 0 -1px -80px;
		}

		.row.\31 50\25 > * {
			padding: 60px 0 0 60px;
		}

		.row.\31 50\25 {
			margin: -60px 0 -1px -60px;
		}

		.row.uniform.\31 50\25 > * {
			padding: 60px 0 0 60px;
		}

		.row.uniform.\31 50\25 {
			margin: -60px 0 -1px -60px;
		}

		.row.\35 0\25 > * {
			padding: 20px 0 0 20px;
		}

		.row.\35 0\25 {
			margin: -20px 0 -1px -20px;
		}

		.row.uniform.\35 0\25 > * {
			padding: 20px 0 0 20px;
		}

		.row.uniform.\35 0\25 {
			margin: -20px 0 -1px -20px;
		}

		.row.\32 5\25 > * {
			padding: 10px 0 0 10px;
		}

		.row.\32 5\25 {
			margin: -10px 0 -1px -10px;
		}

		.row.uniform.\32 5\25 > * {
			padding: 10px 0 0 10px;
		}

		.row.uniform.\32 5\25 {
			margin: -10px 0 -1px -10px;
		}

		.\31 2u\28xlarge\29, .\31 2u\24\28xlarge\29 {
			width: 100%;
			clear: none;
			margin-left: 0;
		}

		.\31 1u\28xlarge\29, .\31 1u\24\28xlarge\29 {
			width: 91.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\31 0u\28xlarge\29, .\31 0u\24\28xlarge\29 {
			width: 83.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\39 u\28xlarge\29, .\39 u\24\28xlarge\29 {
			width: 75%;
			clear: none;
			margin-left: 0;
		}

		.\38 u\28xlarge\29, .\38 u\24\28xlarge\29 {
			width: 66.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\37 u\28xlarge\29, .\37 u\24\28xlarge\29 {
			width: 58.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\36 u\28xlarge\29, .\36 u\24\28xlarge\29 {
			width: 50%;
			clear: none;
			margin-left: 0;
		}

		.\35 u\28xlarge\29, .\35 u\24\28xlarge\29 {
			width: 41.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\34 u\28xlarge\29, .\34 u\24\28xlarge\29 {
			width: 33.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\33 u\28xlarge\29, .\33 u\24\28xlarge\29 {
			width: 25%;
			clear: none;
			margin-left: 0;
		}

		.\32 u\28xlarge\29, .\32 u\24\28xlarge\29 {
			width: 16.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\31 u\28xlarge\29, .\31 u\24\28xlarge\29 {
			width: 8.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\31 2u\24\28xlarge\29 + *,
		.\31 1u\24\28xlarge\29 + *,
		.\31 0u\24\28xlarge\29 + *,
		.\39 u\24\28xlarge\29 + *,
		.\38 u\24\28xlarge\29 + *,
		.\37 u\24\28xlarge\29 + *,
		.\36 u\24\28xlarge\29 + *,
		.\35 u\24\28xlarge\29 + *,
		.\34 u\24\28xlarge\29 + *,
		.\33 u\24\28xlarge\29 + *,
		.\32 u\24\28xlarge\29 + *,
		.\31 u\24\28xlarge\29 + * {
			clear: left;
		}

		.\-11u\28xlarge\29 {
			margin-left: 91.66667%;
		}

		.\-10u\28xlarge\29 {
			margin-left: 83.33333%;
		}

		.\-9u\28xlarge\29 {
			margin-left: 75%;
		}

		.\-8u\28xlarge\29 {
			margin-left: 66.66667%;
		}

		.\-7u\28xlarge\29 {
			margin-left: 58.33333%;
		}

		.\-6u\28xlarge\29 {
			margin-left: 50%;
		}

		.\-5u\28xlarge\29 {
			margin-left: 41.66667%;
		}

		.\-4u\28xlarge\29 {
			margin-left: 33.33333%;
		}

		.\-3u\28xlarge\29 {
			margin-left: 25%;
		}

		.\-2u\28xlarge\29 {
			margin-left: 16.66667%;
		}

		.\-1u\28xlarge\29 {
			margin-left: 8.33333%;
		}

	}

	@media screen and (max-width: 1280px) {

		.row > * {
			padding: 25px 0 0 25px;
		}

		.row {
			margin: -25px 0 -1px -25px;
		}

		.row.uniform > * {
			padding: 25px 0 0 25px;
		}

		.row.uniform {
			margin: -25px 0 -1px -25px;
		}

		.row.\32 00\25 > * {
			padding: 50px 0 0 50px;
		}

		.row.\32 00\25 {
			margin: -50px 0 -1px -50px;
		}

		.row.uniform.\32 00\25 > * {
			padding: 50px 0 0 50px;
		}

		.row.uniform.\32 00\25 {
			margin: -50px 0 -1px -50px;
		}

		.row.\31 50\25 > * {
			padding: 37.5px 0 0 37.5px;
		}

		.row.\31 50\25 {
			margin: -37.5px 0 -1px -37.5px;
		}

		.row.uniform.\31 50\25 > * {
			padding: 37.5px 0 0 37.5px;
		}

		.row.uniform.\31 50\25 {
			margin: -37.5px 0 -1px -37.5px;
		}

		.row.\35 0\25 > * {
			padding: 12.5px 0 0 12.5px;
		}

		.row.\35 0\25 {
			margin: -12.5px 0 -1px -12.5px;
		}

		.row.uniform.\35 0\25 > * {
			padding: 12.5px 0 0 12.5px;
		}

		.row.uniform.\35 0\25 {
			margin: -12.5px 0 -1px -12.5px;
		}

		.row.\32 5\25 > * {
			padding: 6.25px 0 0 6.25px;
		}

		.row.\32 5\25 {
			margin: -6.25px 0 -1px -6.25px;
		}

		.row.uniform.\32 5\25 > * {
			padding: 6.25px 0 0 6.25px;
		}

		.row.uniform.\32 5\25 {
			margin: -6.25px 0 -1px -6.25px;
		}

		.\31 2u\28large\29, .\31 2u\24\28large\29 {
			width: 100%;
			clear: none;
			margin-left: 0;
		}

		.\31 1u\28large\29, .\31 1u\24\28large\29 {
			width: 91.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\31 0u\28large\29, .\31 0u\24\28large\29 {
			width: 83.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\39 u\28large\29, .\39 u\24\28large\29 {
			width: 75%;
			clear: none;
			margin-left: 0;
		}

		.\38 u\28large\29, .\38 u\24\28large\29 {
			width: 66.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\37 u\28large\29, .\37 u\24\28large\29 {
			width: 58.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\36 u\28large\29, .\36 u\24\28large\29 {
			width: 50%;
			clear: none;
			margin-left: 0;
		}

		.\35 u\28large\29, .\35 u\24\28large\29 {
			width: 41.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\34 u\28large\29, .\34 u\24\28large\29 {
			width: 33.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\33 u\28large\29, .\33 u\24\28large\29 {
			width: 25%;
			clear: none;
			margin-left: 0;
		}

		.\32 u\28large\29, .\32 u\24\28large\29 {
			width: 16.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\31 u\28large\29, .\31 u\24\28large\29 {
			width: 8.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\31 2u\24\28large\29 + *,
		.\31 1u\24\28large\29 + *,
		.\31 0u\24\28large\29 + *,
		.\39 u\24\28large\29 + *,
		.\38 u\24\28large\29 + *,
		.\37 u\24\28large\29 + *,
		.\36 u\24\28large\29 + *,
		.\35 u\24\28large\29 + *,
		.\34 u\24\28large\29 + *,
		.\33 u\24\28large\29 + *,
		.\32 u\24\28large\29 + *,
		.\31 u\24\28large\29 + * {
			clear: left;
		}

		.\-11u\28large\29 {
			margin-left: 91.66667%;
		}

		.\-10u\28large\29 {
			margin-left: 83.33333%;
		}

		.\-9u\28large\29 {
			margin-left: 75%;
		}

		.\-8u\28large\29 {
			margin-left: 66.66667%;
		}

		.\-7u\28large\29 {
			margin-left: 58.33333%;
		}

		.\-6u\28large\29 {
			margin-left: 50%;
		}

		.\-5u\28large\29 {
			margin-left: 41.66667%;
		}

		.\-4u\28large\29 {
			margin-left: 33.33333%;
		}

		.\-3u\28large\29 {
			margin-left: 25%;
		}

		.\-2u\28large\29 {
			margin-left: 16.66667%;
		}

		.\-1u\28large\29 {
			margin-left: 8.33333%;
		}

	}

	@media screen and (max-width: 980px) {

		.row > * {
			padding: 25px 0 0 25px;
		}

		.row {
			margin: -25px 0 -1px -25px;
		}

		.row.uniform > * {
			padding: 25px 0 0 25px;
		}

		.row.uniform {
			margin: -25px 0 -1px -25px;
		}

		.row.\32 00\25 > * {
			padding: 50px 0 0 50px;
		}

		.row.\32 00\25 {
			margin: -50px 0 -1px -50px;
		}

		.row.uniform.\32 00\25 > * {
			padding: 50px 0 0 50px;
		}

		.row.uniform.\32 00\25 {
			margin: -50px 0 -1px -50px;
		}

		.row.\31 50\25 > * {
			padding: 37.5px 0 0 37.5px;
		}

		.row.\31 50\25 {
			margin: -37.5px 0 -1px -37.5px;
		}

		.row.uniform.\31 50\25 > * {
			padding: 37.5px 0 0 37.5px;
		}

		.row.uniform.\31 50\25 {
			margin: -37.5px 0 -1px -37.5px;
		}

		.row.\35 0\25 > * {
			padding: 12.5px 0 0 12.5px;
		}

		.row.\35 0\25 {
			margin: -12.5px 0 -1px -12.5px;
		}

		.row.uniform.\35 0\25 > * {
			padding: 12.5px 0 0 12.5px;
		}

		.row.uniform.\35 0\25 {
			margin: -12.5px 0 -1px -12.5px;
		}

		.row.\32 5\25 > * {
			padding: 6.25px 0 0 6.25px;
		}

		.row.\32 5\25 {
			margin: -6.25px 0 -1px -6.25px;
		}

		.row.uniform.\32 5\25 > * {
			padding: 6.25px 0 0 6.25px;
		}

		.row.uniform.\32 5\25 {
			margin: -6.25px 0 -1px -6.25px;
		}

		.\31 2u\28medium\29, .\31 2u\24\28medium\29 {
			width: 100%;
			clear: none;
			margin-left: 0;
		}

		.\31 1u\28medium\29, .\31 1u\24\28medium\29 {
			width: 91.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\31 0u\28medium\29, .\31 0u\24\28medium\29 {
			width: 83.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\39 u\28medium\29, .\39 u\24\28medium\29 {
			width: 75%;
			clear: none;
			margin-left: 0;
		}

		.\38 u\28medium\29, .\38 u\24\28medium\29 {
			width: 66.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\37 u\28medium\29, .\37 u\24\28medium\29 {
			width: 58.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\36 u\28medium\29, .\36 u\24\28medium\29 {
			width: 50%;
			clear: none;
			margin-left: 0;
		}

		.\35 u\28medium\29, .\35 u\24\28medium\29 {
			width: 41.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\34 u\28medium\29, .\34 u\24\28medium\29 {
			width: 33.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\33 u\28medium\29, .\33 u\24\28medium\29 {
			width: 25%;
			clear: none;
			margin-left: 0;
		}

		.\32 u\28medium\29, .\32 u\24\28medium\29 {
			width: 16.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\31 u\28medium\29, .\31 u\24\28medium\29 {
			width: 8.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\31 2u\24\28medium\29 + *,
		.\31 1u\24\28medium\29 + *,
		.\31 0u\24\28medium\29 + *,
		.\39 u\24\28medium\29 + *,
		.\38 u\24\28medium\29 + *,
		.\37 u\24\28medium\29 + *,
		.\36 u\24\28medium\29 + *,
		.\35 u\24\28medium\29 + *,
		.\34 u\24\28medium\29 + *,
		.\33 u\24\28medium\29 + *,
		.\32 u\24\28medium\29 + *,
		.\31 u\24\28medium\29 + * {
			clear: left;
		}

		.\-11u\28medium\29 {
			margin-left: 91.66667%;
		}

		.\-10u\28medium\29 {
			margin-left: 83.33333%;
		}

		.\-9u\28medium\29 {
			margin-left: 75%;
		}

		.\-8u\28medium\29 {
			margin-left: 66.66667%;
		}

		.\-7u\28medium\29 {
			margin-left: 58.33333%;
		}

		.\-6u\28medium\29 {
			margin-left: 50%;
		}

		.\-5u\28medium\29 {
			margin-left: 41.66667%;
		}

		.\-4u\28medium\29 {
			margin-left: 33.33333%;
		}

		.\-3u\28medium\29 {
			margin-left: 25%;
		}

		.\-2u\28medium\29 {
			margin-left: 16.66667%;
		}

		.\-1u\28medium\29 {
			margin-left: 8.33333%;
		}

	}

	@media screen and (max-width: 736px) {

		.row > * {
			padding: 20px 0 0 20px;
		}

		.row {
			margin: -20px 0 -1px -20px;
		}

		.row.uniform > * {
			padding: 20px 0 0 20px;
		}

		.row.uniform {
			margin: -20px 0 -1px -20px;
		}

		.row.\32 00\25 > * {
			padding: 40px 0 0 40px;
		}

		.row.\32 00\25 {
			margin: -40px 0 -1px -40px;
		}

		.row.uniform.\32 00\25 > * {
			padding: 40px 0 0 40px;
		}

		.row.uniform.\32 00\25 {
			margin: -40px 0 -1px -40px;
		}

		.row.\31 50\25 > * {
			padding: 30px 0 0 30px;
		}

		.row.\31 50\25 {
			margin: -30px 0 -1px -30px;
		}

		.row.uniform.\31 50\25 > * {
			padding: 30px 0 0 30px;
		}

		.row.uniform.\31 50\25 {
			margin: -30px 0 -1px -30px;
		}

		.row.\35 0\25 > * {
			padding: 10px 0 0 10px;
		}

		.row.\35 0\25 {
			margin: -10px 0 -1px -10px;
		}

		.row.uniform.\35 0\25 > * {
			padding: 10px 0 0 10px;
		}

		.row.uniform.\35 0\25 {
			margin: -10px 0 -1px -10px;
		}

		.row.\32 5\25 > * {
			padding: 5px 0 0 5px;
		}

		.row.\32 5\25 {
			margin: -5px 0 -1px -5px;
		}

		.row.uniform.\32 5\25 > * {
			padding: 5px 0 0 5px;
		}

		.row.uniform.\32 5\25 {
			margin: -5px 0 -1px -5px;
		}

		.\31 2u\28small\29, .\31 2u\24\28small\29 {
			width: 100%;
			clear: none;
			margin-left: 0;
		}

		.\31 1u\28small\29, .\31 1u\24\28small\29 {
			width: 91.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\31 0u\28small\29, .\31 0u\24\28small\29 {
			width: 83.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\39 u\28small\29, .\39 u\24\28small\29 {
			width: 75%;
			clear: none;
			margin-left: 0;
		}

		.\38 u\28small\29, .\38 u\24\28small\29 {
			width: 66.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\37 u\28small\29, .\37 u\24\28small\29 {
			width: 58.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\36 u\28small\29, .\36 u\24\28small\29 {
			width: 50%;
			clear: none;
			margin-left: 0;
		}

		.\35 u\28small\29, .\35 u\24\28small\29 {
			width: 41.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\34 u\28small\29, .\34 u\24\28small\29 {
			width: 33.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\33 u\28small\29, .\33 u\24\28small\29 {
			width: 25%;
			clear: none;
			margin-left: 0;
		}

		.\32 u\28small\29, .\32 u\24\28small\29 {
			width: 16.6666666667%;
			clear: none;
			margin-left: 0;
		}

		.\31 u\28small\29, .\31 u\24\28small\29 {
			width: 8.3333333333%;
			clear: none;
			margin-left: 0;
		}

		.\31 2u\24\28small\29 + *,
		.\31 1u\24\28small\29 + *,
		.\31 0u\24\28small\29 + *,
		.\39 u\24\28small\29 + *,
		.\38 u\24\28small\29 + *,
		.\37 u\24\28small\29 + *,
		.\36 u\24\28small\29 + *,
		.\35 u\24\28small\29 + *,
		.\34 u\24\28small\29 + *,
		.\33 u\24\28small\29 + *,
		.\32 u\24\28small\29 + *,
		.\31 u\24\28small\29 + * {
			clear: left;
		}

		.\-11u\28small\29 {
			margin-left: 91.66667%;
		}

		.\-10u\28small\29 {
			margin-left: 83.33333%;
		}

		.\-9u\28small\29 {
			margin-left: 75%;
		}

		.\-8u\28small\29 {
			margin-left: 66.66667%;
		}

		.\-7u\28small\29 {
			margin-left: 58.33333%;
		}

		.\-6u\28small\29 {
			margin-left: 50%;
		}

		.\-5u\28small\29 {
			margin-left: 41.66667%;
		}

		.\-4u\28small\29 {
			margin-left: 33.33333%;
		}

		.\-3u\28small\29 {
			margin-left: 25%;
		}

		.\-2u\28small\29 {
			margin-left: 16.66667%;
		}

		.\-1u\28small\29 {
			margin-left: 8.33333%;
		}

	}

/* Basic */

	@-ms-viewport {
		width: device-width;
	}

	body {
		background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0.05), rgba(0, 0, 0, 0)), url("images/bg01.png");
		background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.05), rgba(0, 0, 0, 0)), url("images/bg01.png");
		background-image: -ms-linear-gradient(top, rgba(0, 0, 0, 0.05), rgba(0, 0, 0, 0)), url("images/bg01.png");
		background-image: linear-gradient(top, rgba(0, 0, 0, 0.05), rgba(0, 0, 0, 0)), url("images/bg01.png");
		background-color: #f7f7f7;
		background-position: top left, top left;
		background-repeat: repeat-x, repeat;
		background-size: 100% 30em, auto;
		font-family: 'Open Sans', sans-serif;
		font-size: 13pt;
		color: #696969;
		font-weight: 300;
		line-height: 2.25em;
	}

		body.is-loading * {
			-moz-transition: none !important;
			-webkit-transition: none !important;
			-ms-transition: none !important;
			transition: none !important;
			-moz-animation: none !important;
			-webkit-animation: none !important;
			-ms-animation: none !important;
			animation: none !important;
		}

	input, select, textarea {
		font-family: 'Open Sans', sans-serif;
		font-size: 13pt;
		color: #696969;
		font-weight: 300;
		line-height: 2.25em;
	}

	a {
		color: #0090c5;
		text-decoration: underline;
	}

		a:hover {
			text-decoration: none;
		}

	h1, h2, h3, h4, h5, h6 {
		color: #444;
		font-weight: 800;
	}

		h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {
			color: inherit;
			text-decoration: none;
			outline: 0;
		}

	h2 {
		font-size: 2.25em;
		margin: 0 0 1.1em 0;
		line-height: 1em;
	}

	h3 {
		font-size: 1.35em;
		margin: 0 0 1em 0;
	}

	b, strong {
		font-weight: 600;
		color: #444;
	}

	i, em {
		font-style: italic;
	}

	br.clear {
		clear: both;
	}

	sub {
		position: relative;
		top: 0.5em;
		font-size: 0.8em;
	}

	sup {
		position: relative;
		top: -0.5em;
		font-size: 0.8em;
	}

	hr {
		border: 0;
		border-top: solid 1px #eee;
	}

	blockquote {
		border-left: solid 0.5em #eee;
		padding: 1em 0 1em 2em;
		font-style: italic;
	}

	p, ul, ol, dl, table {
		margin-bottom: 2em;
	}

/* Section/Article */

	section, article {
		margin-bottom: 5em;
	}

	section > :last-child,
	article > :last-child,
	section:last-child,
	article:last-child {
		margin-bottom: 0;
	}

	header {
		margin: 0 0 2em 0;
	}

		header h2, header h3 {
			margin: 0 0 0.25em 0;
		}

		header p {
			margin: 0;
		}

	footer {
		margin: 2.5em 0 0 0;
	}

/* Forms */

	form label {
		display: block;
		font-weight: 800;
		margin: 0 0 1em 0;
		font-size: 0.8em;
		color: #444;
	}

	form input[type="text"],
	form input[type="email"],
	form input[type="password"],
	form select,
	form textarea {
		-webkit-appearance: none;
		display: block;
		width: 100%;
		border-radius: 8px;
		border: solid 1px #eee;
	}

		form input[type="text"]:focus,
		form input[type="email"]:focus,
		form input[type="password"]:focus,
		form select:focus,
		form textarea:focus {
			border-color: #0090c5;
		}

	form input[type="text"],
	form input[type="email"],
	form input[type="password"] {
		line-height: 3em;
		padding: 0 1em;
	}

	form select {
		line-height: 3em;
		padding: 0 1em;
	}

	form textarea {
		min-height: 9em;
		padding: 1em;
	}

	form .formerize-placeholder {
		color: #555 !important;
	}

	form ::-webkit-input-placeholder {
		color: #555 !important;
	}

	form :-moz-placeholder {
		color: #555 !important;
	}

	form ::-moz-placeholder {
		color: #555 !important;
	}

	form :-ms-input-placeholder {
		color: #555 !important;
	}

	form ::-moz-focus-inner {
		border: 0;
	}

/* Tables */

	table {
		width: 100%;
	}

		table.default {
			width: 100%;
		}

			table.default tr {
				border-top: solid 1px #eee;
			}

				table.default tr:first-child {
					border-top: 0;
				}

			table.default td {
				padding: 0.5em 1em 0.5em 1em;
			}

			table.default th {
				text-align: left;
				padding: 0.5em 1em 0.5em 1em;
				font-weight: 800;
				margin: 0 0 1em 0;
			}

			table.default thead {
				background: #404248;
				color: #fff;
			}

/* Image */

	.image {
		display: inline-block;
		outline: 0;
	}

		.image img {
			display: block;
			width: 100%;
			border-radius: 8px;
		}

		.image.fit {
			display: block;
			width: 100%;
		}

		.image.featured {
			display: block;
			width: 100%;
			margin: 0 0 2.5em 0;
		}

		.image.left {
			float: left;
			margin: 0 2em 2em 0;
		}

		.image.centered {
			display: block;
			margin: 0 0 2.5em 0;
		}

			.image.centered img {
				margin: 0 auto;
				width: auto;
			}

/* Button */

	input[type="button"],
	input[type="submit"],
	input[type="reset"],
	button,
	.button {
		-moz-transition: background-color .25s ease-in-out;
		-webkit-transition: background-color .25s ease-in-out;
		-ms-transition: background-color .25s ease-in-out;
		transition: background-color .25s ease-in-out;
		-webkit-appearance: none;
		position: relative;
		display: inline-block;
		background: #0090c5;
		color: #fff;
		text-decoration: none;
		border-radius: 6px;
		font-weight: 800;
		outline: 0;
		border: 0;
		cursor: pointer;
		font-size: 1.35em;
		padding: 0.6em 1.5em;
	}

		input[type="button"].icon:before,
		input[type="submit"].icon:before,
		input[type="reset"].icon:before,
		button.icon:before,
		.button.icon:before {
			position: relative;
			margin-right: 0.5em;
			top: 0.05em;
		}

		input[type="button"]:hover,
		input[type="submit"]:hover,
		input[type="reset"]:hover,
		button:hover,
		.button:hover {
			background: #10a0d5;
		}

		input[type="button"]:active,
		input[type="submit"]:active,
		input[type="reset"]:active,
		button:active,
		.button:active {
			background: #20b0e5;
		}

		input[type="button"].alt,
		input[type="submit"].alt,
		input[type="reset"].alt,
		button.alt,
		.button.alt {
			background: #f1f1f1;
			background: rgba(0, 0, 0, 0.05);
			color: #444;
		}

			input[type="button"].alt:hover,
			input[type="submit"].alt:hover,
			input[type="reset"].alt:hover,
			button.alt:hover,
			.button.alt:hover {
				background: #e8e8e8;
				background: rgba(0, 0, 0, 0.085);
			}

			input[type="button"].alt:active,
			input[type="submit"].alt:active,
			input[type="reset"].alt:active,
			button.alt:active,
			.button.alt:active {
				background: #e4e4e4;
				background: rgba(0, 0, 0, 0.15);
			}

		input[type="button"].big,
		input[type="submit"].big,
		input[type="reset"].big,
		button.big,
		.button.big {
			font-size: 2.25em;
			padding: 0.8em 0.9em;
		}

/* List */

	ul.default {
		list-style: disc;
		padding-left: 1em;
	}

		ul.default li {
			padding-left: 0.5em;
		}

	ul.actions li {
		display: inline-block;
		padding: 0 0 0 0.25em;
		margin: 0 0 0 0.25em;
	}

		ul.actions li:first-child {
			margin-left: 0;
			padding-left: 0;
		}

	ul.menu li {
		border-left: solid 1px #e0e0e0;
		display: inline-block;
		padding: 0 0 0 0.75em;
		margin: 0 0 0 0.75em;
	}

		ul.menu li:first-child {
			border-left: 0;
			margin-left: 0;
			padding-left: 0;
		}

	ol.default {
		list-style: decimal;
		padding-left: 1.25em;
	}

		ol.default li {
			padding-left: 0.25em;
		}

/* Box */

	.box {
		background: #fff;
		border-radius: 6px;
		box-shadow: 0px 3px 0px 0px rgba(0, 0, 0, 0.05);
		padding: 2em;
	}

		.box.feature {
			padding: 0;
		}

			.box.feature .inner {
				padding: 4em 2em 3em 2em;
			}

			.box.feature h2 {
				font-size: 1.35em;
			}

			.box.feature p {
				margin: 0;
			}

			.box.feature .image {
				position: relative;
				margin: 0;
			}

				.box.feature .image img {
					border-bottom-left-radius: 0;
					border-bottom-right-radius: 0;
				}

/* Icons */

	.icon {
		position: relative;
		text-decoration: none;
	}

		.icon:before {
			-moz-osx-font-smoothing: grayscale;
			-webkit-font-smoothing: antialiased;
			font-family: FontAwesome;
			font-style: normal;
			font-weight: normal;
			text-transform: none !important;
		}

		.icon > .label {
			display: none;
		}

/* Widgets */

	.widget.thumbnails .grid {
		margin: 0 0 3em 0;
	}

	.widget.thumbnails .image {
		margin: 0;
	}

	.widget.contact ul {
		overflow: hidden;
		position: relative;
		left: -4px;
		top: 4px;
		margin-bottom: 1.5em;
	}

		.widget.contact ul li {
			display: inline-block;
			margin-right: 0.25em;
		}

			.widget.contact ul li a {
				-moz-transition: background-color .25s ease-in-out;
				-webkit-transition: background-color .25s ease-in-out;
				-ms-transition: background-color .25s ease-in-out;
				transition: background-color .25s ease-in-out;
				display: inline-block;
				width: 2.5em;
				height: 2.5em;
				text-align: center;
				line-height: 2.5em;
				border-radius: 0.35em;
				outline: 0;
				opacity: 0.75;
				text-decoration: none;
				background: #222222;
			}

				.widget.contact ul li a:before {
					color: #f3f3f3;
					font-size: 1.75em;
					line-height: 1.5em;
				}

				.widget.contact ul li a:hover {
					background: #444444;
				}

				.widget.contact ul li a:active {
					background: #666666;
				}

/* Wrappers */

	#header-wrapper {
		padding: 4.5em 0 1em 0;
	}

	#features-wrapper {
		padding: 3em 0 3em 0;
	}

	#main-wrapper {
		background: #fff;
		box-shadow: 0px 3px 0px 0px rgba(0, 0, 0, 0.05);
		padding: 5em 0 5em 0;
	}

	#footer-wrapper {
		padding: 6em 0 8em 0;
	}

/* Header */

	#header {
		position: relative;
	}

/* Logo */

	#logo {
		display: inline-block;
	}

		#logo h1 {
			background: #ff4486;
			color: #fff;
			border-radius: 6px;
			font-family: 'Oleo Script', serif;
			font-weight: 400;
			padding: 0.25em 0.2em 0.25em 0.2em;
			font-size: 3.25em;
			letter-spacing: 0.05em;
			display: inline-block;
			vertical-align: middle;
		}

		#logo span {
			font-weight: 800;
			line-height: 4.5em;
			letter-spacing: 0.025em;
			font-size: 0.9em;
			vertical-align: middle;
			margin: 0 0 0 1.25em;
		}

/* Nav */

	#nav {
		position: absolute;
		right: 0;
		top: 0;
		font-size: 0.9em;
	}

		#nav ul li {
			float: left;
			line-height: 4.5em;
			padding-left: 1.5em;
		}

			#nav ul li a, #nav ul li span {
				-moz-transition: background-color .25s ease-in-out;
				-webkit-transition: background-color .25s ease-in-out;
				-ms-transition: background-color .25s ease-in-out;
				transition: background-color .25s ease-in-out;
				font-weight: 800;
				letter-spacing: 0.025em;
				color: #696969;
				text-decoration: none;
				border-radius: 6px;
				padding: 0.5em 1em 0.5em 1em;
			}

			#nav ul li > ul {
				display: none;
			}

			#nav ul li:hover a, #nav ul li:hover span {
				background: #fff;
			}

			#nav ul li.active a, #nav ul li.active span {
				background: #fff;
			}

			#nav ul li.current a {
				background: #444;
				color: #fff;
			}

	.dropotron {
		background: #fff;
		letter-spacing: 0.025em;
		color: #696969;
		text-decoration: none;
		border-radius: 6px;
		padding: 0.75em 0;
		min-width: 15em;
		box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.1), 0 0.25em 0.25em 0.1em rgba(0, 0, 0, 0.025);
		margin-top: calc(-0.75em + 1px);
		margin-left: -1px;
	}

		.dropotron li {
			border-top: solid 1px #eee;
			line-height: 3em;
		}

			.dropotron li:first-child {
				border-top: 0;
			}

			.dropotron li > a, .dropotron li > span {
				-moz-transition: color .25s ease-in-out, background-color .25s ease-in-out;
				-webkit-transition: color .25s ease-in-out, background-color .25s ease-in-out;
				-ms-transition: color .25s ease-in-out, background-color .25s ease-in-out;
				transition: color .25s ease-in-out, background-color .25s ease-in-out;
				text-decoration: none;
				color: inherit;
				display: block;
				padding: 0 1.5em;
			}

				.dropotron li > a:hover, .dropotron li > span:hover {
					background: #eee;
				}

			.dropotron li.active > a, .dropotron li.active > span {
				background: #eee;
			}

		.dropotron.level-0 {
			font-size: 0.8em;
			margin-left: 1.5em;
			margin-top: 0;
		}

			.dropotron.level-0:before {
				content: '';
				position: absolute;
				top: -0.5em;
				left: 1em;
				border-bottom: solid 0.75em #ffffff;
				border-left: solid 0.75em transparent;
				border-right: solid 0.75em transparent;
				z-index: 1;
			}

/* Banner */

	#banner {
		position: relative;
		padding: 4.5em;
	}

		#banner h2 {
			font-size: 3.5em;
			margin: 0.1em 0 0.35em 0;
		}

		#banner p {
			font-size: 2.75em;
			line-height: 1.35em;
			margin: 0;
		}

		#banner .button {
			width: 100%;
			margin-bottom: 0.5em;
		}

			#banner .button.icon:before {
				position: absolute;
				right: 0.15em;
				top: 50%;
				margin-top: -0.5em;
			}

			#banner .button.alt {
				margin-bottom: 0;
			}

		#banner ul {
			margin: 0 0 0 2em;
		}

/* Footer */

	#footer {
		margin-top: 0;
	}

		#footer a {
			color: inherit;
		}

	#copyright {
		color: #aaa;
		padding: 4em 0 0 0;
		text-align: center;
	}

		#copyright a {
			color: inherit;
		}

/* XLarge */

	@media screen and (max-width: 1680px) {

		/* Basic */

			body, input, select, textarea {
				font-size: 12pt;
			}

	}

/* Large */

	@media screen and (max-width: 1280px) {

		/* Basic */

			body, input, select, textarea {
				font-size: 11pt;
			}

	}

/* Medium */

	#navPanel, #navToggle {
		display: none;
	}

	@media screen and (max-width: 980px) {

		/* Basic */

			html, body {
				overflow-x: hidden;
			}

			body, input, select, textarea {
				font-size: 11pt;
			}

		/* Section/Article */

			section, article {
				clear: both;
				margin-bottom: 3em !important;
			}

			section.last, article.last {
				margin-bottom: 0 !important;
			}

		/* Image */

			.image.left {
				width: 25%;
				margin-bottom: 2em !important;
			}

		/* List */

			ul.menu li {
				display: block;
				border: 0 !important;
				padding: 0 !important;
				margin: 0 !important;
			}

			ul.actions li {
				display: block;
				padding: 0;
				margin: 1em 0 0 0;
			}

				ul.actions li:first-child {
					margin-top: 0;
				}

		/* Button */

			input[type="button"],
			input[type="submit"],
			input[type="reset"],
			button,
			.button {
				width: 100%;
				text-align: center;
				font-size: 1.35em;
				padding: 0.85em 0 !important;
			}

				input[type="button"].icon,
				input[type="submit"].icon,
				input[type="reset"].icon,
				button.icon,
				.button.icon {
					padding-right: 0.75em !important;
				}

					input[type="button"].icon:before,
					input[type="submit"].icon:before,
					input[type="reset"].icon:before,
					button.icon:before,
					.button.icon:before {
						margin-right: 0.5em;
						top: 0.05em;
					}

		/* Wrappers */

			#header-wrapper {
				padding: 3em 0 1em 0;
				text-align: center;
			}

			#footer-wrapper {
				padding: 6em 0 4em 0;
			}

		/* Header */

			#header {
				margin: 0 auto;
			}

		/* Logo */

			#logo span {
				display: block;
				margin: 0;
			}

		/* Nav */

			#nav {
				display: none;
			}

		/* Banner */

			#banner {
				padding: 4.5em 3em;
				text-align: center;
			}

				#banner ul {
					margin: 2em 0 0 0;
				}

				#banner .button.icon:before {
					position: relative;
					right: auto;
					top: auto;
				}

		/* Content */

			#content {
				border-bottom: solid 1px #e8e8e8;
				padding-bottom: 4em;
				margin-bottom: 0 !important;
			}

				#content > :last-child {
					margin-bottom: 0 !important;
				}

			#sidebar > :last-child {
				margin-bottom: 0 !important;
			}

		/* Footer */

			#copyright {
				padding: 0;
			}

		/* Off-Canvas Navigation */

			#page-wrapper {
				-moz-backface-visibility: hidden;
				-webkit-backface-visibility: hidden;
				-ms-backface-visibility: hidden;
				backface-visibility: hidden;
				-moz-transition: -moz-transform 0.5s ease;
				-webkit-transition: -webkit-transform 0.5s ease;
				-ms-transition: -ms-transform 0.5s ease;
				transition: transform 0.5s ease;
				padding-bottom: 1px;
			}

			#navToggle {
				-moz-backface-visibility: hidden;
				-webkit-backface-visibility: hidden;
				-ms-backface-visibility: hidden;
				backface-visibility: hidden;
				-moz-transition: -moz-transform 0.5s ease;
				-webkit-transition: -webkit-transform 0.5s ease;
				-ms-transition: -ms-transform 0.5s ease;
				transition: transform 0.5s ease;
				display: block;
				height: 44px;
				left: 0;
				position: fixed;
				top: 0;
				width: 100%;
				z-index: 10001;
			}

				#navToggle .toggle {
					width: 70px;
					height: 50px;
					opacity: 0.35;
				}

					#navToggle .toggle:before {
						display: inline-block;
						font-family: FontAwesome;
						text-decoration: none;
						font-style: normal;
						font-weight: normal;
						-webkit-font-smoothing: antialiased;
						-moz-osx-font-smoothing: grayscale;
						position: absolute;
						left: 6px;
						top: 6px;
						background: rgba(0, 0, 0, 0.5);
						width: 58px;
						height: 38px;
						border-radius: 6px;
						content: '\f0c9';
						color: #fff;
						text-align: center;
						line-height: 38px;
						font-size: 20px;
					}

					#navToggle .toggle:active {
						opacity: 0.75;
					}

			#navPanel {
				-moz-backface-visibility: hidden;
				-webkit-backface-visibility: hidden;
				-ms-backface-visibility: hidden;
				backface-visibility: hidden;
				-moz-transform: translateX(-275px);
				-webkit-transform: translateX(-275px);
				-ms-transform: translateX(-275px);
				transform: translateX(-275px);
				-moz-transition: -moz-transform 0.5s ease;
				-webkit-transition: -webkit-transform 0.5s ease;
				-ms-transition: -ms-transform 0.5s ease;
				transition: transform 0.5s ease;
				display: block;
				height: 100%;
				left: 0;
				overflow-y: auto;
				position: fixed;
				top: 0;
				width: 275px;
				z-index: 10002;
				background: #fff;
				box-shadow: inset -3px 0px 0px 0px #dfdfdf;
				padding: 0 23px 0 20px;
			}

				#navPanel .link {
					display: block;
					text-decoration: none;
					height: 54px;
					line-height: 54px;
					border-top: solid 1px #e8e8e8;
					color: #696969;
				}

					#navPanel .link:first-child {
						border-top: 0;
					}

				#navPanel .indent-1 {
					display: inline-block;
					width: 1em;
				}

				#navPanel .indent-2 {
					display: inline-block;
					width: 2em;
				}

				#navPanel .indent-3 {
					display: inline-block;
					width: 3em;
				}

				#navPanel .indent-4 {
					display: inline-block;
					width: 4em;
				}

				#navPanel .indent-5 {
					display: inline-block;
					width: 5em;
				}

				#navPanel .depth-0 {
					color: #444;
					font-weight: 800;
				}

			body.navPanel-visible #page-wrapper {
				-moz-transform: translateX(275px);
				-webkit-transform: translateX(275px);
				-ms-transform: translateX(275px);
				transform: translateX(275px);
			}

			body.navPanel-visible #navToggle {
				-moz-transform: translateX(275px);
				-webkit-transform: translateX(275px);
				-ms-transform: translateX(275px);
				transform: translateX(275px);
			}

			body.navPanel-visible #navPanel {
				-moz-transform: translateX(0);
				-webkit-transform: translateX(0);
				-ms-transform: translateX(0);
				transform: translateX(0);
			}

	}

/* Small */

	@media screen and (max-width: 736px) {

		/* Basic */

			body, input, select, textarea {
				line-height: 2em;
			}

			h2, h3, h4, h5, h6 {
				font-size: 13pt;
				margin: 0 0 1em 0;
			}

		/* Section/Article */

			section, article {
				clear: both;
				margin-bottom: 3em !important;
			}

				section.last, article.last {
					margin-bottom: 0 !important;
				}

		/* Image */

			.image.left {
				width: 25%;
				margin-bottom: 2em !important;
			}

		/* List */

			ul.menu li {
				display: block;
				border: 0 !important;
				padding: 0 !important;
				margin: 0 !important;
			}

			ul.actions li {
				display: block;
				padding: 0;
				margin: 1em 0 0 0;
			}

				ul.actions li:first-child {
					margin-top: 0;
				}

		/* Button */

			input[type="button"],
			input[type="submit"],
			input[type="reset"],
			button,
			.button {
				width: 100%;
				text-align: center;
				font-size: 1.25em !important;
				padding: 0.65em 0 !important;
			}

				input[type="button"].icon,
				input[type="submit"].icon,
				input[type="reset"].icon,
				button.icon,
				.button.icon {
					padding-right: 0.75em !important;
				}

					input[type="button"].icon:before,
					input[type="submit"].icon:before,
					input[type="reset"].icon:before,
					button.icon:before,
					.button.icon:before {
						margin-right: 0.5em;
						top: 0.05em;
					}

		/* Box */

			.box {
				padding: 15px 15px 15px 15px;
				margin: 0;
			}

				.box.feature {
					margin: 20px 0 0 0 !important;
					padding: 0;
				}

					.box.feature .inner {
						padding: 30px 15px 30px 15px;
					}

					.box.feature p {
						margin: 0;
					}

					.box.feature .image {
						position: relative;
						margin: 0;
					}

						.box.feature .image img {
							border-bottom-left-radius: 0;
							border-bottom-right-radius: 0;
						}

		/* Widgets */

			.widget.thumbnails .image {
				margin: 0;
			}

			.widget.thumbnails .x {
				padding: 1em 0.5em 0 0;
			}

			.widget.thumbnails .y {
				padding: 1em 0 0 0.5em;
			}

			.widget.thumbnails .row:first-child .x, .widget.thumbnails .row:first-child .y {
				padding-top: 0;
			}

		/* Wrappers */

			#header-wrapper {
				padding: 3em 0 1.5em 0;
			}

			#banner-wrapper {
				padding: 0 15px 0 15px;
			}

			#features-wrapper {
				padding: 0 15px 40px 15px;
			}

			#main-wrapper, #footer-wrapper {
				padding: 40px 30px 40px 30px;
			}

		/* Logo */

			#logo h1 {
				font-size: 2.75em;
				padding: 0.2em 0.275em;
			}

			#logo span {
				line-height: 3em;
			}

		/* Banner */

			#banner {
				text-align: center;
				padding: 15px 15px 15px 15px;
				margin: 0 auto !important;
			}

				#banner h2 {
					font-size: 2em;
					margin: 0.75em 0 0.5em 0;
				}

				#banner p {
					font-size: 1.5em;
					line-height: 1.5em;
					margin: 0;
				}

				#banner ul {
					margin: 0;
				}

				#banner .button {
					margin: 0 0 1em 0;
				}

		/* Content */

			#content {
				padding-bottom: 3em;
			}

		/* Footer */

			#footer section {
				border-bottom: solid 1px #ccc;
				padding-bottom: 3em;
				margin-bottom: 1em !important;
			}

			#copyright {
				text-align: left;
			}

	}
</style>

</head>
<body class="left-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1>
						<a href="index.html">모두의 가이드</a> 

					</h1>

				</div>
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="current"><a
							href="${pageContext.request.contextPath}/views/travel/travelPlanList.jsp">여행검색</a></li>
						<li class="current"><a
							href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp">모임관리</a></li>
						<li class="current"><a href="login.html">로그아웃</a></li>
					</ul>
				</nav>
			</header>
		</div>

		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div class="row 50%">
					<div class="4u 12u$(medium)">
						<div id="sidebar">
							<!-- ㅁㄴㅇ -->
							<!-- Sidebar -->
							<section>

								<ul class="style2">
									<li><a
										href="${pageContext.request.contextPath}/views/user/myPage.jsp"><h3>회원정보</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/history/myTravelerHistory.jsp"><h3>여행
												내역</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/history/myGuideHistory.jsp"><h3>가이드
												내역</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/group/joiningGroupList.jsp"><h3>참여중인
												모임</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/views/travel/myTravelPlan.jsp"><h3>내가
												올린 여행계획</h3></a></li>
								</ul>

								</footer>
							</section>

						</div>
					</div>
					<div class="8u 12u$(medium) important(medium)">
						<div id="content">
							<div class="col-sm-9 col-lg-9">
								<div>
									<h3>여행 계획 상세</h3>
								</div>

								<div class="table-responsive">
									<div class="well">
										<div>
											<h3>${boardDetail.name }</h3>
										</div>

										<div class="panel panel-default">
											<div class="panel-heading">${article.title }</div>
											<div class="panel-body">
												<div class="post">
													<strong>${article.user.name }</strong> &nbsp;<span
														class="text-muted">${article.regDate }</span> &nbsp;<a
														href="${ctx }/article/modify.do?articleId=${article.articleId}"
														class="glyphicon glyphicon-cog pull-right"
														style="padding: 10px">수정</a> <a
														href="${ctx }/article/remove.do?articleId=${article.articleId}"
														class="glyphicon glyphicon-cog pull-right"
														onclick="button_event();">삭제</a>

												</div>
												<br>

												<p style="padding: 20px">${article.content }</p>

												<c:forEach items="${article.comments }" var="comment">
													<table class="table"
														style="font-size: 13px; padding: 20px;">
														<tr>
															<td><strong>댓글 쓴 사람${comment.user.id }</strong></td>
															<td class="text-right">댓글 날짜${comment.regDate } <span
																style="float: right"> <a
																	class="glyphicon glyphicon-trash"
																	href="${ctx }/comment/remove.do?articleId=${article.articleId}&commentId=${comment.commentId}">삭제</a>
															</span>
															</td>
														</tr>
														<tr>
															<td colspan="2">
																<p class="txt">${comment.content }</p>
															</td>
														</tr>
													</table>
												</c:forEach>
											</div>
											<div class="panel-footer">
												<div class="write_area">
													<form
														action="${pageContext.request.contextPath }/comment/regist.do"
														method="POST">
														<input type="hidden" name="articleId"
															value="${article.articleId }">
														<textarea class="input_write_comment" name="comments"
															placeholder="댓글쓰기"></textarea>
														<span style="float: right"> <input type="submit"
															class="comment_submit" value="댓글 등록">
														</span>
													</form>
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

			<!-- Footer -->
			<div id="footer-wrapper">
				<footer id="footer" class="container">
					<div class="row">
						<div class="3u 6u(medium) 12u$(small)"></div>
						<div class="3u 6u$(medium) 12u$(small)"></div>
						<div class="3u 6u(medium) 12u$(small)"></div>
						<div class="3u 6u$(medium) 12u$(small)"></div>
					</div>
					<div class="row">
						<div class="12u">
							<div id="copyright">
								<ul class="menu">
									<li>&copy; Untitled. All rights reserved</li>
									<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
								</ul>
							</div>
						</div>
					</div>
				</footer>
			</div>

		</div>

		<!-- Scripts -->

		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.dropotron.min.js"></script>
		<script src="assets/js/skel.min.js"></script>
		<script src="assets/js/util.js"></script>
		<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
		<script src="assets/js/main.js"></script>
</body>
</html>
