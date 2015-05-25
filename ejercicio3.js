importPackage(java.io);
importPackage(java.lang);

function big()
{
    function sub1()
    {
        var x=7;
        sub2();
    }
    function sub2()
    {
        var y=x;
    }
    var x=3;
    System.out.write(x);
    sub1();
}

big()