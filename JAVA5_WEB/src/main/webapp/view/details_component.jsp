<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div iv class="container details-container">
  <div class="row details-content">
    <div class="col-sm-6 details-products">
      <div class="details-header">
        <div class="promotion">
          <p class="promotion-item"></p>
        </div>
        <button class="details-interactive">
          <i class="icofont-heart details-icons"></i>
        </button>
      </div>
      <div id="carouselExampleDark" class="carousel carousel-dark slide"
        data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active" data-bs-interval="2000">
            <img
              src="{{products[index].Image}}"
              class="details-img" alt="...">
          </div>
          <div class="carousel-item"data-bs-interval="2000">
            <img
              src="{{products[index].images[1]}}"
              class="details-img" alt="">
          </div>
          <div class="carousel-item"data-bs-interval="2000">
            <img
              src="{{products[index].images[2]}}"
              class="details-img" alt="">
          </div>
          <div class="carousel-item"data-bs-interval="2000">
            <img
              src="{{products[index].images[3]}}"
              class="details-img" alt="">
          </div>
          
        </div>
        <button class="carousel-control-prev" type="button"
          data-bs-target="#carouselExampleDark" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button"
          data-bs-target="#carouselExampleDark" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <div class="row details-img-list">
        <div class="col-sm-3">
          <img type="button" data-bs-target="#carouselExampleDark"
            data-bs-slide-to="0" aria-current="true" aria-label="Slide 1"
            src="{{products[index].images[0]}}"
            class="img-small active" alt="">
        </div>
        <div class="col-sm-3">
          <img type="button" data-bs-target="#carouselExampleDark"
            data-bs-slide-to="1" aria-label="Slide 2"
            src="{{products[index].images[1]}}"
            class="img-small" alt="">
        </div>
        <div class="col-sm-3">
          <img type="button" data-bs-target="#carouselExampleDark"
            data-bs-slide-to="2" aria-label="Slide 3"
            src="{{products[index].images[2]}}"
            class="img-small" alt="">
        </div>
        <div class="col-sm-3">
          <img type="button" data-bs-target="#carouselExampleDark"
            data-bs-slide-to="3" aria-label="Slide 4"
            src="{{products[index].images[3]}}"
            class="img-small" alt="">
        </div>
      </div>
    </div>
    <div class="col-sm-6">
      <span class="details-name">{{products[index].name}}</span>
      <div class="divider"></div>
      <div class="details-product">
        <p class="price-old">{{products[index].price_old|number:0}}Ä</p>
        <p class="price">{{products[index].Price|number:0}}Ä</p>
      </div>
      <p class="title-details">{{products[index].description1}}</p>
      <ul>
        <li class="details-item">Sku: P006</li>
        <li class="details-item">Categories: Butter & Eggs, Cultured Butter
        </li>
        <li class="details-item">
          Tag: Man
        </li>
      </ul>
      <div class="details-cart">
        <div class="details-amount">
          <button class="upanddown">-</button>
          <input type="text" min="0" value="1" class="input-amount">
          <button class="upanddown">+</button>
        </div>
        <button ng-click="addCart(products[index])" class="btn-details">ThÃªm vÃ o giá» hÃ ng</button>
      </div>

    </div>
  </div>
  <div class="details-content">
    <nav>
      <div class="nav nav-tabs" id="nav-tab" role="tablist">
        <button class="nav-link active" id="nav-home-tab"
          data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
          role="tab" aria-controls="nav-home" aria-selected="true">MÃ Táº¢</button>
        <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
          data-bs-target="#nav-profile" type="button" role="tab"
          aria-controls="nav-profile" aria-selected="false">ÄÃNH GIÃ</button>
      </div>
    </nav>
    <div class="tab-content" id="nav-tabContent">
      <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
        aria-labelledby="nav-home-tab" tabindex="0">
        <div class="description-list">
          <p class="details-description">
            {{products[index].description1}}
          </p>
        </div>
      </div>
      <div class="tab-pane fade" id="nav-profile" role="tabpanel"
        aria-labelledby="nav-profile-tab" tabindex="0">
        <div class="evaluate-list">
          <div class="evaluate-comments">
            <h3 class="normal">ÄÃ¡nh giÃ¡</h3>
            <p class="details-description">ChÆ°a cÃ³ ÄÃ¡nh giÃ¡ nÃ o</p>
          </div>
          <div class="evaluate-comments">
            <div class="evaluate-review">
              <div class="comments-list">
                <h3 class="normal">HÃ£y lÃ  ngÆ°á»i Äáº§u tiÃªn ÄÃ¡nh giÃ¡</h3>
                <label for="">ÄÃ¡nh giÃ¡ cá»§a báº¡n</label>
                <div class="card-details mt-3">
                  <div class="d-flex align-items-center">
                    <div class="small-ratings">
                      <i class="fa fa-star"></i>
                    </div>
                    <div class="small-ratings">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                    </div>
                    <div class="small-ratings">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                    </div>
                    <div class="small-ratings">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                    </div>
                    <div class="small-ratings">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                    </div>
                  </div>
                </div>
                <form action="">
                  <div class="row login">
                    <div class="form-group col-sm-12">
                      <label class="details-form-title" for="">Nháº­n xÃ©t cá»§a báº¡n
                        *</label>
                      <input class="form-control details-form" type="text">
                    </div>
                  </div>
                  <div class="row login">
                    <div class="form-group col-sm-6">
                      <label class="details-form-title" for="">TÃªn *</label>
                      <input class="form-control" type="">
                    </div>
                    <div class="form-group col-sm-6">
                      <label class="details-form-title" for="">Email *</label>
                      <input class="form-control" type="">
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>