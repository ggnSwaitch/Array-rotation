# Array-rotation
A simple algorithm to rotate the array with given number of rotation. 

import UIKit

var array = [1,2,3,4,5] <br />

func arrRotation(arr: Array<Int>, n: Int) <br />
{ <br />
    var rotations = n <br />
    if(n > array.count) <br />
    {<br />
        rotations = calNumberOfRotations(n: n, count: array.count)<br />
    }<br />
    if(rotations == array.count)<br />
    {<br />
        return<br />
    }<br />
    var tempArr = Array<Int>()<br />
    var newArray = Array<Int>()<br />
    let rotationStrtIndex = (array.count-rotations)<br />
   <br />
    for i in rotationStrtIndex...array.count - 1<br />
    {<br />
        if(tempArr.count == 0)<br />
        {<br />
              tempArr.insert(array[i], at: tempArr.count)<br />
        }<br />
        else<br />
        {<br />
            tempArr.insert(array[i], at: tempArr.count)<br />
        }<br />
    }<br />
   newArray = tempArr + array[0...rotationStrtIndex-1]<br />
    print(newArray)<br />
}<br />

func calNumberOfRotations(n: Int, count : Int) -> Int<br />
{<br />
    var maxRotations = n - count<br />
    
    if(maxRotations > count)<br />
    {<br />
       maxRotations = calNumberOfRotations(n: maxRotations, count: count)<br />
    }<br />
    return maxRotations<br />
}<br />

arrRotation(arr: array, n: 18)<br />
