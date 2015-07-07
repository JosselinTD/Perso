<h1>Langages et frameworks</h1>
<?php
	include_once("sql/connection.php");

	$languages = $bdd->query("SELECT * FROM language");

	while($language = $languages->fetch_assoc()){
		include("templates/language.php");
	}
?>

<h1>Domaines</h1>
<div class="piechart">
	<canvas id="pole" width="300" height="300"></canvas>
</div>

<script type="text/javascript">
	var ctx = document.getElementById("pole").getContext("2d"),
		data = [<?php
			$poles = $bdd->query("SELECT * FROM pole");
			$numPoles = $poles->num_rows;
			$i = 0;
			while($pole = $poles->fetch_assoc()){
				?>{value: <?=$pole["value"]?>, label: "<?=$pole["title"]?>", color: "<?=$pole["color"]?>", highlight: "<?=$pole["highlight"]?>"}<?php
				if(++$i != $numPoles){
					echo ",";
				}
			}
		?>],
		options = {
			legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<segments.length; i++){%><li><span style=\"background-color:<%=segments[i].fillColor%>\"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>"
		},
		poleChart = new Chart(ctx).Pie(data, options),
		legend = poleChart.generateLegend();

	$(".piechart").append(legend);
</script>