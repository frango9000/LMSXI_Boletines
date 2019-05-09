for $n in doc("xquery")//book
return data($n/price)
(:comment:)