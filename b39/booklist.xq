<html>
<body>
<ul>
{
  for $x in doc("bookstore")//book
  order by $x/title
  return <li>{$x/title/text()}</li>
}
</ul>
</body>
</html>