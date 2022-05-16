<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="CSS/carousel.css"rel="stylesheet"type="text/css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-1.12.4.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700,900&display=swap" rel="stylesheet">
    <script src="JS/menu.js"></script>
</head>
    <title>Document</title>
</head>
<body>
    <%@include file="header.html" %>

    <div class="section-title">
        <h2>Menu</h2>
      </div>
    <form class="container" action="checkout.jsp" onsubmit="return validation()" method="post">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div id="menu-slider" class="owl-carousel">
						<!-- 1 -->
						<div class="menu-grid">
							<div class="menu-grid-image"><img src="img/Menu/atiampela.png" alt="">
								<div class="menu-grid-box">
									<h1>RP</h1>
									<p>7K</p>
								</div></div>
								<div class="menu-grid-txt">
									<span>Ati Ampela Ayam</span>
									<h2>Semur Ati Ampela ayam</h2>
									<ul>
										<li><i class="fa fa-dollar" aria-hidden="true"></i>Rp 7.000</li>
										
									</ul>
                                    <label class="form-control">
                                        <input type="checkbox" name="checkboxs" value="Ati Ampela" id="menu-checkbox"/>
                                        Add to cart
                                    </label>
									<div class="number-input">
                                      
                                            <input type="number" min="0" class="form-control" id="QtyInput1" name="AtiQty" value="0" >
                                        
                                    </div>
								</div>
							</div>
							<!-- 2 -->
							<div class="menu-grid">
								<div class="menu-grid-image"><img src="img/Menu/ayamgoreng.png" alt="">
									<div class="menu-grid-box">
										<h1>RP</h1>
									    <p>21K</p>
									</div></div>
									<div class="menu-grid-txt">
										<span>Ayam</span>
										<h2>Ayam Goreng Bawang</h2>
										<ul>
                                            <li><i class="fa fa-dollar" aria-hidden="true"></i>Rp 21.000</li>
										</ul>
                                        <label class="form-control">
                                            <input type="checkbox" name="checkboxs" value="Ayam goreng" id="menu-checkbox"/>
                                            Add to cart
                                        </label>
                                        <div class="number-input">
                                          
                                                <input type="number" min="0" class="form-control" id="QtyInput2" name="AyamQty" value="0" >
                                            
                                        </div>
									</div>
								</div>
								<!-- 3 -->
								<div class="menu-grid">
									<div class="menu-grid-image"><img src="img/Menu/terong balado.png" alt="">
										<div class="menu-grid-box">
											<h1>RP</h1>
											<p>5K</p>
										</div></div>
										<div class="menu-grid-txt">
											<span>Terong</span>
											<h2>Terong Balado</h2>
											<ul>
                                                <li><i class="fa fa-dollar" aria-hidden="true"></i>Rp 5.000</li>
                                            </ul>
                                            <label class="form-control">
                                                <input type="checkbox" name="checkboxs" value="Terong" id="menu-checkbox"/>
                                                Add to cart
                                            </label>
                                            <div class="number-input">
                                              
                                                    <input type="number" min="0" class="form-control" id="QtyInput3" name="TerongQty" value="0" >
                                                
                                            </div>
										</div>
									</div>
									<!-- 4 -->
									<div class="menu-grid">
										<div class="menu-grid-image"><img src="img/Menu/capcay.png" alt="">
											<div class="menu-grid-box">
												<h1>RP</h1>
												<p>5K</p>
											</div></div>
											<div class="menu-grid-txt">
												<span>Capcay</span>
												<h2>Capcay tumis</h2>
												<ul>
                                                    <li><i class="fa fa-dollar" aria-hidden="true"></i>Rp 5.000</li>
                                                </ul>
                                                <label class="form-control">
                                                    <input type="checkbox" name="checkboxs" value="Capcay" id="menu-checkbox"/>
                                                    Add to cart
                                                </label>
                                                <div class="number-input">
                                                  
                                                        <input type="number" min="0" class="form-control" id="QtyInput4" name="CapcaiQty" value="0" >
                                                    
                                                </div>
											</div>
										</div>
										<!-- 5 -->
										<div class="menu-grid">
											<div class="menu-grid-image"><img src="img/Menu/dadar.png" alt="">
												<div class="menu-grid-box">
													<h1>RP</h1>
													<p>4K</p>
												</div></div>
												<div class="menu-grid-txt">
													<span>TELUR</span>
													<h2>Telur Dadar</h2>
                                                    <ul>
                                                        <li><i class="fa fa-dollar" aria-hidden="true"></i>Rp 4.000</li>
                                                    </ul>
                                                    <label class="form-control">
                                                        <input type="checkbox" name="checkboxs" value="Dadar" id="menu-checkbox"/>
                                                        Add to cart
                                                    </label>
                                                    <div class="number-input">
                                                      
                                                            <input type="number" min="0" class="form-control" id="QtyInput5" name="DadarQty" value="0" >
                                                        
                                                    </div>
												</div>
											</div>
											<!-- 6 -->
											<div class="menu-grid">
												<div class="menu-grid-image"><img src="img/Menu/gorengan.png" alt="">
													<div class="menu-grid-box">
														<h1>RP</h1>
														<p>2K</p>
													</div></div>
													<div class="menu-grid-txt">
														<span>Gorengan</span>
														<h2>Bakwan | Tempe | Tahu</h2>
														<ul>
                                                            <li><i class="fa fa-dollar" aria-hidden="true"></i>Rp 2.000</li>
                                                        </ul>
                                                        <label class="form-control">
                                                            <input type="checkbox" name="checkboxs" value="Gorengan" id="menu-checkbox"/>
                                                            Add to cart
                                                        </label>
                                                        <div class="number-input">
                                                          
                                                                <input type="number" min="0" class="form-control" id="QtyInput6" name="GorenganQty" value="0" >
                                                            
                                                        </div>
													</div>
												</div>
												<!-- 7 -->
												<div class="menu-grid">
													<div class="menu-grid-image"><img src="img/Menu/sayursop.png" alt="">
														<div class="menu-grid-box">
															<h1>RP</h1>
															<p>7K</p>
														</div></div>
														<div class="menu-grid-txt">
															<span>Sup</span>
															<h2>Sayur Sop</h2>
															<ul>
                                                                <li><i class="fa fa-dollar" aria-hidden="true"></i>Rp 7.000</li>
                                                            </ul>
                                                            <label class="form-control">
                                                                <input type="checkbox" name="checkboxs" value="Sayur sop" id="menu-checkbox"/>
                                                                Add to cart
                                                            </label>
                                                            <div class="number-input">
                                                              
                                                                    <input type="number" min="0" class="form-control" id="QtyInput7" name="SayurSopQty" value="0" >
                                                                
                                                            </div>
														</div>
													</div>
													<!-- 8 -->
													<div class="menu-grid">
														<div class="menu-grid-image"><img src="img/Menu/telurasin.png" alt="">
															<div class="menu-grid-box">
																<h1>RP</h1>
																<p>4K</p>
															</div></div>
															<div class="menu-grid-txt">
																<span>Telur</span>
																<h2>Telur Asin</h2>
																<ul>
                                                                    <li><i class="fa fa-dollar" aria-hidden="true"></i>Rp 4.000</li>
                                                                </ul>
                                                                <label class="form-control">
                                                                    <input type="checkbox" name="checkboxs" value="Telur Asin" id="menu-checkbox"/>
                                                                    Add to cart
                                                                </label>
                                                                <div class="number-input">
                                                                  
                                                                        <input type="number" min="0" class="form-control" id="QtyInput8" name="AsinQty" value="0" >
                                                                    
                                                                </div>
															</div>
														</div>
														<!-- 9 -->
														<div class="menu-grid">
															<div class="menu-grid-image"><img src="img/Menu/telurbalado.png" alt="">
																<div class="menu-grid-box">
																	<h1>RP</h1>
																	<p>4K</p>
																</div></div>
																<div class="menu-grid-txt">
																	<span>Telur</span>
																	<h2>Telur Balado</h2>
																	<ul>
                                                                        <li><i class="fa fa-dollar" aria-hidden="true"></i>Rp 4.000</li>
                                                                    </ul>
                                                                    <label class="form-control">
                                                                        <input type="checkbox" name="checkboxs" value="Telur Balado" id="menu-checkbox"/>
                                                                        Add to cart
                                                                    </label>
                                                                    <div class="number-input">
                                                                      
                                                                            <input type="number" min="0" class="form-control" id="QtyInput9" name="BaladoQty" value="0" >
                                                                        
                                                                    </div>
																</div>
															</div>
															<!-- 10 -->
															<div class="menu-grid">
																<div class="menu-grid-image"><img src="img/Menu/tempeorek.png" alt="">
																	<div class="menu-grid-box">
																		<h1>RP</h1>
																		<p>3K</p>
																	</div></div>
                                                                    <div class="menu-grid-txt">
                                                                        <span>Tempe</span>
                                                                        <h2>Orek Tempe</h2>
                                                                        <ul>
                                                                            <li><i class="fa fa-dollar" aria-hidden="true"></i>Rp 3.000</li>
                                                                        </ul>
                                                                        <label class="form-control">
                                                                            <input type="checkbox" name="checkboxs" value="Orek Tempe" id="menu-checkbox"/>
                                                                            Add to cart
                                                                        </label>
                                                                        <div class="number-input">
                                                                          
                                                                                <input type="number" min="0" class="form-control" id="QtyInput10" name="TempeQty" value="0" >
                                                                            
                                                                        </div>
                                                                    </div>
																</div>
															</div>
														</div>
													</div>
												</div>
                                                <div class="text-center">
                                                    <button type="submit" class="btn btn-danger btn-lg  mb-5" style="background-color: #99101C; border-color:  #99101C;">Check out now</button>
                                                </div>

                                            </form>
												

    <%@include file="footer.html" %>
    <!-- Script-Section -->
    <script type="text/javascript">
        $(document).ready(function(){
            $("#menu-slider").owlCarousel({
                items:3,
                navigation:true,
                navigationText:["",""],
                autoPlay:true
            });
        });
    </script>
</body>
</html>