

function areaOfTriangles()
{
    Write-Host "The area of the triangle with the base: $i and height: $j is: " $(($i*$j/2))
}
for ( $i = 1; $i<=100; $i++ ) {
    for ( $j = 1; $j <=100; $j++ ) {
        areaOfTriangles $i $j
    }
}    