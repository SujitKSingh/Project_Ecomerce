    <!DOCTYPE html>  
    <html>  
    <head>  
        <title>Angular animated search box - sibeecst_passion </title>  
        <style>  
            .inputText {  
                border: 1px solid #ccc;  
                border-radius: 10px;  
                background-color: #0ff;  
                box-shadow: 1px 1px 1px 1px #ccc;  
                width: 230px;  
                height: 30px;  
            }  
      
            ul {  
                list-style: none;  
                padding: 10px;  
                background-color: #CAEAF5;  
                border-radius: 10px;  
                border: 1px solid #ccc;  
                width: 210px;  
            }  
      
            li {  
                border: 1px solid #ccc;  
                border-right: none;  
                border-left: none;  
                padding: 2px;  
                text-align: center;  
            }         
        </style>  
    </head>  
    <body ng-app ng-init="placesVisited=['Delhi','Kerala','Tamil Nadu','Banglore','Uttar Pradesh','Noida','Haryana','Thrissur'];">  
        <div>  
            <input type="text" ng-model="curPlace" class="inputText">  
            <ul>  
                <li  ng-repeat="place in placesVisited | filter:curPlace">  
                    <a ng-href="https://www.google.co.in/webhp?q={{place}}">{{place}} </a>  
                </li>  
            </ul>  
        </div>  
        <script src="angular.min.js"></script>  
    </body>  
    </html>  