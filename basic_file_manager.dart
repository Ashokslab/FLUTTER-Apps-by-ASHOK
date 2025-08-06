  SizedBox(
              height: 20,
              
            ),
            SizedBox(
            height: 80,
              width: 400,
              child: Card(
                elevation: 20,
                color: const Color.fromARGB(255, 0, 0, 0),
                  child: Row(
                    children: [
                      SizedBox(
                        child: Padding(
                          padding: EdgeInsets.only(top: 0,left: 20),
                          child: Icon(Icons.sd_card, size: 45,color: Colors.white,),
                          
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      child: Padding(
                        padding: EdgeInsets.only(top: 0,left: 40),
                        child: Text('External card',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      
                      ),
                    ],
                  ),
              ),
            )
