import UIKit

var array = [1,2,3,4,5]

func arrRotation(arr: Array<Int>, n: Int)
{
    var rotations = n
    if(n > array.count)
    {
        rotations = calNumberOfRotations(n: n, count: array.count)
    }
    if(rotations == array.count)
    {
        return
    }
    var tempArr = Array<Int>()
    var newArray = Array<Int>()
    let rotationStrtIndex = (array.count-rotations)
   
    for i in rotationStrtIndex...array.count - 1
    {
        if(tempArr.count == 0)
        {
              tempArr.insert(array[i], at: tempArr.count)
        }
        else
        {
            tempArr.insert(array[i], at: tempArr.count)
        }
    }
   newArray = tempArr + array[0...rotationStrtIndex-1]
    print(newArray)
}

func calNumberOfRotations(n: Int, count : Int) -> Int
{
    var maxRotations = n - count
    
    if(maxRotations > count)
    {
       maxRotations = calNumberOfRotations(n: maxRotations, count: count)
    }
    return maxRotations
}

arrRotation(arr: array, n: 18)
