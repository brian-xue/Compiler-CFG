function f(){
    const max = 100;
    let counter = 100;
    let i = 0;

    if (counter < max) {
        counter++;
    } else {
        counter = 1;
        console.log(counter);
    }
    
    for(i =0; i< 10; i++)
        {
            console.log(i);
            // continue;
        }


    while(i<5){
        i++;
    }
    
    

    try {
        i+1;
    } catch (e: any) {
        i-1;
    } finally {
       i=1;
    }
}
