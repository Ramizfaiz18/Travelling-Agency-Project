<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="mainCarousel" class="carousel slide mb-4" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="2"></button>
        <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="3"></button>
        <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="4"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="images/luca-bravo-O453M2Liufs-unsplash.jpg" class="d-block w-100" style="height: 100vh; object-fit: cover;" alt="Slide 1">
            <div class="carousel-caption d-none d-md-block">
                <h3>Explore the World with Amazing Discounts!</h3>
            </div>
        </div>
        <div class="carousel-item">
            <img src="images/kalen-emsley-Bkci_8qcdvQ-unsplash.jpg" class="d-block w-100" style="height: 100vh; object-fit: cover;" alt="Slide 3">
            <div class="carousel-caption d-none d-md-block">
                <h3>Discover New Destinations at Unbeatable Prices!</h3>
            </div>
        </div>
        <div class="carousel-item">
            <img src="images/divani-A4DHN9zEYD4-unsplash.jpg" class="d-block w-100" style="height: 100vh; object-fit: cover;" alt="Slide 4">
            <div class="carousel-caption d-none d-md-block">
                <h3>From Cities to Seas — We’ve Got You Covered.</h3>
            </div>
        </div>
        <div class="carousel-item">
            <img src="images/clayton-cardinalli-LpCnRYK6U_k-unsplash.jpg" class="d-block w-100" style="height: 100vh; object-fit: cover;" alt="Slide 5">
            <div class="carousel-caption d-none d-md-block">
                <h3>The World Is Yours to Explore.</h3>
            </div>
        </div>
         <div class="carousel-item">
            <img src="images/julian-yu-_WuPjE-MPHo-unsplash.jpg" class="d-block w-100" style="height: 100vh; object-fit: cover;" alt="Slide 2">
            <div class="carousel-caption d-none d-md-block">
                <h3>Adventure Awaits — Book Your Journey Today!</h3>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#mainCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#mainCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </button>
</div>

</asp:Content>


