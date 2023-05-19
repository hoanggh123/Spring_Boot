<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Card</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.css" rel="stylesheet" />
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.js"></script>

    <style>
        .url {
            position: absolute;
            width: 435px;
            height: 22px;
            left: 63px;
            top: 166px;

            font-family: 'Arimo';
            font-style: normal;
            font-weight: 700;
            font-size: 15px;
            line-height: 17px;
            text-transform: uppercase;
            color: #888888;
        }
    </style>
</head>

<body>
    <section>
        <div class="header"></div>



        <div class="container">

            <div class="col-12 m-auto">

                <table class="table align-middle mb-0 bg-white">
                    <thead class="bg-light">
                        <tr>
                            <th></th>
                            <th><b>Product</b></th>
                            <th><b>Price</b></th>
                            <th><b>Quantity</b></th>
                            <th><b>Total</b></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">

                                    <div class="ms-3">
                                        <a href="#">x</a>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="fw-normal mb-1">Plain White Shirt</p>
                            </td>
                            <td>
                                <span class="d-flex align-items-center">$59.00</span>
                            </td>
                            <td><input type="number" value="1" style="width: 10%;"></td>
                            <td>
                                <span class="d-flex align-items-center">$59.00</span>

                            </td>
                        </tr>


                    </tbody>
                </table>
            </div>
            <div class="col-12 m-auto">
                <h3 style="margin-top: 80px;">Cart Totals</h3>
                <div class="col-4">
                    <ul class="list-group list-group-light">
                        <li class="list-group-item">Subtotal<text style="float: right;">$59.99</text> </li>
                        <li class="list-group-item">Shipping free<text style="float: right;">FREE!!!</text> </li>
                        <li class="list-group-item"><b>Total</b><text style="float: right;">$59.99</text> </li>
                    </ul>
                </div>
                <button type="button" class="btn btn-warning">Proceed to Checkout</button>

            </div>

        </div>
        <div class="footer"></div>

    </section>
</body>

</html>