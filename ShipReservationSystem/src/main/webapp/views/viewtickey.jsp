<%@page import="com.wipro.ShipReservationSystem.Entities.Booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XYZ Sea Travels</title>
<style>
	* {
  box-sizing: border-box;
}
html, body {
  height: 100%;
  margin: 0;
}
body {
  @import url('https://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700');
  font-family: 'Ubuntu', sans-serif;
  
 
  height: 100%;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: right;
  color: #1c1c1c;
  display: flex;
  justify-content: left;
  background-image:url('/images/image2.jpg');
		background-repeat:no-repeat;
		background-attachment:fixed;
		background-size:100% 100%;
}
h3
{
	text-align: center;
}


.ticket-system {
  max-width: 385px;
  .top {
    display: flex;
    align-items: center;
    flex-direction: column;
    .title {
      
      font-size: 40px;
      text-align: center;
      margin-left: 20px;
      margin-bottom: 50px;
      color: #fff;
    }
    .printer {
      width: 90%;
      height: 20px;
      border: 5px solid #fff;
      border-radius: 10px;
      box-shadow: 1px 3px 3px 0px rgba(0, 0, 0, 0.2);
    }
  }

  .receipts-wrapper {
    overflow: hidden;
    margin-top: -10px;
    padding-bottom: 10px;
  }

  .receipts {
    width: 100%;
    display: flex;
    align-items: center;
    flex-direction: column;
    transform: translateY(-510px);

    animation-duration: 2.5s;
    animation-delay: 500ms;
    animation-name: print;
    animation-fill-mode: forwards;


    .receipt {
      padding: 25px 30px;
      text-align: left;
      min-height: 200px;
      width: 88%;
      background-color: #fff;
      border-radius: 10px 10px 20px 20px;
      box-shadow: 1px 3px 8px 3px rgba(0, 0, 0, 0.2);

      .airliner-logo {
        max-width: 80px;
      }

      .route {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin: 30px 0;

        .plane-icon {
          width: 30px;
          height: 30px;
          transform: rotate(90deg);
        }
        h2 {
          font-weight: 300;
          font-size: 2.2em;
          margin: 0;
        }
      }

      .details {
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;

        .item {
          display: flex;
          flex-direction: column;
          min-width: 70px;

          span {
            font-size: .8em;
            color: rgba(28, 28, 28, .7);
            font-weight: 500;
          }
          h3 {
            margin-top: 10px;
            margin-bottom: 25px;
          }
        }
      }

      &.qr-code {
        height: 110px;
        min-height: unset;
        position: relative;
        border-radius: 20px 20px 10px 10px;
        display: flex;
        align-items: center;

        //TODO: replace with svg
        &::before {
          content: '';
          background: linear-gradient(to right, #fff 50%, #3f32e5 50%);
          background-size: 22px 4px, 100% 4px;
          height: 4px;
          width: 90%;
          display: block;
          left: 0;
          right: 0;
          top: -1px;
          position: absolute;
          margin: auto;
        }

        .qr {
          width: 70px;
          height: 70px;
        }
        
        .description {
          margin-left: 20px;

          h2 {
            margin: 0 0 5px 0;
            font-weight: 500;
          }
          p {
            margin: 0;
            font-weight: 400;
          }
        }
      }
    }
  }
}

@keyframes print {
  0% {
    transform: translateY(-510px)
  }
  35% {
    transform: translateY(-395px);
  }
  70% {
    transform: translateY(-140px);
  }
  100% {
    transform: translateY(0);
  }
}
</style>

</head>
<body>
 

	<% Booking book=(Booking) request.getAttribute("booking"); %>
	 
	</div>
	</div>
	<!-- INSPO:  https://www.behance.net/gallery/69583099/Mobile-Flights-App-Concept -->
<main class="ticket-system">

   <div class="top">
  	 <h1 class="title" style="color:#214e71">Happy Journey <%=book.getPassengername() %></h1>
  
   <div class="printer" />
   </div>
   <div class="receipts-wrapper">
      <div class="receipts">
         <div class="receipt">
           <h2 Style="color:#cb15158a">XYZ Travels</h2>
           
            <div class="route">
            <div class="item">
                  <span>From</span>
                  <h3><%=book.getSource() %></h3>
               </div>
               <div class="item">
                  <span>To</span>
                  <h3><%=book.getDestination() %></h3>
               </div>
              
            </div>
            <div class="route"> 
           <div class="item">
                  <span>PassengerName</span>
                  <h3><%=book.getPassengername() %></h3>
               </div>
               <div class="item">
                  <span>Time</span>
                  <h3><%=book.getTime() %></h3>
               </div>
              </div>
            <div class="details">
            <div class="item">
                  <span>ShipName</span>
                  <h3><%=book.getShipname() %></h3>
               </div>
               <div class="item">
                  <span>BookingId</span>
                  <h3 style="margin-left:px"><%=book.getBookingid() %></h3>
               </div>
               <div class="item">
                  <span>ShipId</span>
                  <h3>CAS<%=book.getSid() %></h3>
               </div>
               <div class="item">
                  <span>PassId</span>
                  <h3>PAS<%= book.getPid() %> </h3>
               </div>
               <div class="item">
                  <span>NoOfSeats</span>
                  <h3 style="margin-left:px"> <%=book.getSeats() %></h3>
               </div>
               <div class="item">
                  <span style="margin-left:30px">Date</span>
                  <h3><%=book.getDateofjourney() %></h3>
               </div>
               <div class="item">
                  <span>SeatNo</span>
                  <h3>S<%=book.getBookingid()%></h3>
               </div>
               <div class="item">
                  <span>TotalPrice</span>
                  <h3><%=book.getPrice()* book.getSeats()%></h3>
               </div>
            </div>
        <form action="/cancel/<%=book.getBookingid() %>" method="get">
	<button type="submit" class="btn btn-primary" Style="margin-top:5px;margin-left:80px">Cancel Ticket</button>
	</form>
	<form action="/download/<%=book.getBookingid() %>" method="get">
	<button type="submit" class="btn btn-primary" Style="margin-top:5px;margin-left:62px">Want To Download</button>
	</form>
         </div>
      </div>
   </div>
  
	
</main>
<div style="margin-top:50px;margin-left:600px;text-align: left;">
<h1 style="font-family: Times New Roman, Times, serif;color:#008070">I hope you make lots of<br> amazing memories, and <br>I look forward to <br>hearing the stories of<br>  your wonderful journey</h1>
<h1 style="margin-left:60px;color:#eb7d51">Have Fun!</h1>
	
	
	</div>

</body>
</html>