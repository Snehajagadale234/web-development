<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>
  <title>Exam Results</title>

  <style>
    body {
      font-family: Arial;
      background-color: #f2f2f2;
    }

    h2 {
      text-align: center;
    }

    table {
      border-collapse: collapse;
      width: 60%;
      margin: auto;
    }

    th {
      background-color: #4CAF50;
      color: white;
      padding: 10px;
    }

    td {
      padding: 8px;
      text-align: center;
    }

    tr:nth-child(even) {
      background-color: #dddddd;
    }
  </style>

</head>

<body>

<h2>Student Exam Results</h2>

<table border="1">
<tr>
  <th>ID</th>
  <th>Name</th>
  <th>Subject</th>
  <th>Score</th>
</tr>

<xsl:for-each select="results/candidate">
<tr>
  <td><xsl:value-of select="@id"/></td>
  <td><xsl:value-of select="name"/></td>
  <td><xsl:value-of select="subject"/></td>
  <td><xsl:value-of select="score"/></td>
</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>