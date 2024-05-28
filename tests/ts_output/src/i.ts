function f(){
    const max = 100;
    let counter = 100;
    let i = 0;

    // if (counter < max) {
    //     counter++;
    // } else {
    //     counter = 1;
    //     console.log(counter);
    // }

    // // do {
    //     console.log(i);
    //     i++
    // } while (i < 10);


    // for(i =0; i< 10; i++)
    //     {
    //         console.log(i);
    //     }

    try {
        i+1;
    } catch (e: any) {
        i-1;
    } finally {
       i=1;
    }
}
