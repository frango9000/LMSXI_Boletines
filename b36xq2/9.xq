for $y in doc("xml")//libro
return<result>{$y/titulo,$y/autor}</result>
