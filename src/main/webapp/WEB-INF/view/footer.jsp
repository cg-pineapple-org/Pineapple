<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta charset="UTF-8" />
  <title>Pineapple</title>
  <style>
    .contacts {
      display: block;
      margin-top: 50px;
      padding-left: 50px; ;
      padding-right: 50px;

    }

    .contacts .contacts-info {
      margin: auto;
      /* display: inline-block; */
    }

    .footer-column {
      background-color: black;
    }

    .logo-footer {
      flex: 0 0 auto; /* Không cho logo co giãn */
      padding-left: 110px;
    }

    /* Logo responsive */
    .responsive-logo-footer {
      max-width: 100px; /* Giới hạn kích thước tối đa */
      height: auto; /* Tự động điều chỉnh chiều cao */
    }

  </style>
</head>
<body>
<footer class="site-footer footer-opt-2">
  <div class="footer-top full-width">
    <div
            class="owl-carousel instagram"
            data-nav="false"
            data-autoplay="false"
            data-dots="false"
            data-loop="true"
            data-margin="0"
            data-responsive='{"0":{"items":2},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":5}}'
    >
      <div class="item-instagram">
        <a href="#">
          <img src="<c:url value = "/assets/images/store-card-13-iphone-nav-202409.png" />"alt="img">
        </a>
        <span class="text">
                <i class="icon fa fa-instagram" aria-hidden="true"></i>
              </span>
      </div>
      <div class="item-instagram">
        <a href="#">
          <img src="<c:url value = "/assets/images/store-card-13-airpods-nav-202409.png"  />"alt="img">
        </a>
        <span class="text">
                <i class="icon fa fa-instagram" aria-hidden="true"></i>
              </span>
      </div>
      <div class="item-instagram">
        <a href="#">
          <img src="<c:url value = "/assets/images/store-card-13-ipad-nav-202405.png"  />"alt="img">
        </a>
        <span class="text">
                <i class="icon fa fa-instagram" aria-hidden="true"></i>
              </span>
      </div>
      <div class="item-instagram">
        <a href="#">
          <img src="<c:url value = "/assets/images/store-card-13-mac-nav-202410.png"  />"alt="img">
        </a>
        <span class="text">
                <i class="icon fa fa-instagram" aria-hidden="true"></i>
              </span>
      </div>
      <div class="item-instagram">
        <a href="#">
          <img src="<c:url value = "/assets/images/store-card-13-watch-nav-202409.png"  />"alt="img">
        </a>
        <span class="text">
                <i class="icon fa fa-instagram" aria-hidden="true"></i>
              </span>
      </div>

    </div>
    <div class="contacts">
      <p class="contacts-info">
        ∆ Apple Intelligence is available in beta on all iPhone 16 models, iPhone 15 Pro, iPhone 15 Pro Max, iPad mini (A17 Pro), and iPad and Mac models with M1 and later, with Siri and device language set to English (Australia, Canada, Ireland, New Zealand, South Africa, UK, or U.S.), as part of an iOS 18, iPadOS 18, and macOS Sequoia software update. Additional features and languages will be available in April, with more languages and platforms coming over the course of the year. Languages supported in 2025 include Chinese, English (India, Singapore), French, German, Italian, Japanese, Korean, Portuguese, Spanish, and Vietnamese.
      </p>
      <p class="contacts-info">
        * Pricing for iPhone 16 and iPhone 16 Plus includes a $30 connectivity discount that requires carrier activation with AT&T, Boost Mobile, T-Mobile, or Verizon. Financing available to qualified customers, subject to credit approval and credit limit, and requires you to select Citizens One Apple iPhone Payments or Apple Card Monthly Installments (ACMI) as your payment type at checkout at Apple. You’ll need to select AT&T, Boost Mobile, T‑Mobile, or Verizon as your carrier when you checkout. An iPhone purchased with ACMI is always unlocked, so you can switch carriers at any time, subject to your carrier’s terms. Taxes and shipping on items purchased using ACMI are subject to your card’s variable APR, not the ACMI 0% APR. ACMI is not available for purchases made online at special storefronts. The last month’s payment for each product will be the product’s purchase price, less all other payments at the monthly payment amount. ACMI financing is subject to change at any time for any reason, including but not limited to, installment term lengths and eligible products. See the Apple Card Customer Agreement(Opens in a new window) for more information about ACMI. Additional Citizens One Apple iPhone Payments terms are here(Opens in a new window).
      </p>
      <p class="contacts-info">
        ◊ Apple Card Monthly Installments (ACMI) is a 0% APR payment option that is only available if you select it at checkout in the U.S. for eligible products purchased at Apple Store locations, apple.com(Opens in a new window), the Apple Store app, or by calling 1-800-MY-APPLE, and is subject to credit approval and credit limit. See support.apple.com/102730(Opens in a new window) for more information about eligible products. Existing customers: See your Customer Agreement for your variable APR. As of December 1, 2024, the variable APR on new Apple Card accounts ranges from 18.49% to 28.74%. You must elect to use ACMI at checkout. If you buy an ACMI-eligible product with a one-time payment on Apple Card at checkout, that purchase is subject to your Apple Card’s variable APR, not the ACMI 0% APR. Taxes and shipping on items purchased using ACMI are subject to your Apple Card’s variable APR, not the ACMI 0% APR. In order to buy an iPhone with ACMI, you must select one of the following carriers: AT&T, Boost Mobile, T-Mobile, or Verizon. An iPhone purchased with ACMI is always unlocked, so you can switch carriers at any time, subject to your carrier’s terms. ACMI is not available for purchases made online at the following special stores: Apple Employee Purchase Plan; participating corporate Employee Purchase Programs; Apple at Work for small businesses; Government and Veterans and Military Purchase Programs; or on refurbished devices. The last month’s payment for each product will be the product's purchase price, less all other payments at the monthly payment amount. ACMI is subject to change at any time for any reason, including but not limited to installment term lengths and eligible products. See the Apple Card Customer Agreement(Opens in a new window) for more information about ACMI.
      </p>
      <p class="contacts-info">
        To access and use all Apple Card features and products available only to Apple Card users, you must add Apple Card to Wallet on an iPhone or iPad that supports and has the latest version of iOS or iPadOS. Apple Card is subject to credit approval, available only for qualifying applicants in the United States, and issued by Goldman Sachs Bank USA, Salt Lake City Branch.
      </p>
      <p class="contacts-info">
        If you reside in the U.S. territories, please call Goldman Sachs at 877-255-5923 with questions about Apple Card.
      </p>
      <p class="contacts-info">
        † Monthly pricing is available when you select Apple Card Monthly Installments (ACMI) as payment type at checkout at Apple, and is subject to credit approval and credit limit. Financing terms vary by product. Taxes and shipping are not included in ACMI and are subject to your card’s variable APR. See the Apple Card Customer Agreement(Opens in a new window) for more information. ACMI is not available for purchases made online at special storefronts. The last month’s payment for each product will be the product’s purchase price, less all other payments at the monthly payment amount. ACMI financing is subject to change at any time for any reason, including but not limited to, installment term lengths and eligible products. See support.apple.com/kb/HT211204(Opens in a new window) for information about upcoming changes to ACMI financing.
      </p>
      <p class="contacts-info">
        1. Special pricing available to qualified customers. To learn more about how to start qualifying toward special pricing, talk to an Apple Specialist in a store or give us a call at 1‑800‑MY‑APPLE.
      </p>
      <p class="contacts-info">
        2. $9 two-hour delivery on eligible Apple products in most metros. Offer is not available on customized Mac, engraved products, and for certain order types including orders paid for with financing or by bank transfer. Delivery times vary according to your selected delivery address, availability of your items, and the time of day you place your order. Find a store to view local store hours or see checkout for estimated delivery. A signature is required for delivery. Drivers may ask for verbal confirmation of receipt from a safe distance to satisfy the signature requirement. See https://www.apple.com/shop/shipping-pickup/ for more information.
      </p>
      <p class="contacts-info">
        3. Trade-in values will vary based on the condition, year, and configuration of your eligible trade-in device. Not all devices are eligible for credit. You must be at least the age of majority to be eligible to trade in for credit or for an Apple Gift Card. Trade-in value may be applied toward qualifying new device purchase, or added to an Apple Gift Card. Actual value awarded is based on receipt of a qualifying device matching the description provided when estimate was made. Sales tax may be assessed on full value of a new device purchase. In-store trade-in requires presentation of a valid photo ID (local law may require saving this information). Offer may not be available in all stores, and may vary between in-store and online trade-in. Some stores may have additional requirements. Apple or its trade-in partners reserve the right to refuse, cancel, or limit quantity of any trade-in transaction for any reason. More details are available from Apple’s trade-in partner for trade-in and recycling of eligible devices. Restrictions and limitations may apply.
      </p>
      <p class="contacts-info">
        4. AT&T iPhone 16 Special Deal: Monthly price (if shown) reflects net monthly payment, after application of AT&T trade-in credit applied over 36 months with purchase of an iPhone 16 Pro, iPhone 16 Pro Max, iPhone 16 Plus, or iPhone 16 and trade-in of eligible smartphone. Receive credit with purchase of an iPhone 16 Pro or iPhone 16 Pro Max of either $1000, $700, or $350 (based upon the model and condition of your trade-in smartphone). Receive credit with purchase of an iPhone 16 or iPhone 16 Plus of either $700 or $350 (based upon the model and condition of your trade-in smartphone). Max bill credits will not exceed the cost of the device. Requires upgrade of an existing line or activation of a new line and purchase of a new iPhone 16 Pro, iPhone 16 Pro Max, iPhone 16 Plus, or iPhone 16, on qualifying 36 month 0% APR installment plan, subject to carrier credit qualification. Customers purchasing this offer through Apple cannot add the Next Up Anytime option. $0 down for well qualified customers only, or down payment may be required and depends on a variety of factors. Tax on full retail price due at sale. Requires activation on eligible AT&T unlimited plan. AT&T may temporarily slow data speeds if the network is busy. If you cancel eligible wireless service, credits will stop and you will owe the remaining device balance. Activation/Upgrade Fee: $35. Trade in device may not be on existing installment plan. Bill credits are applied as a monthly credit over the 36 month installment plan. Credits start within 3 bills. Will receive catchup credits once credits start. Wireless line must be on an installment agreement, active, and in good standing for 30 days to qualify. Installment agreement starts when device is shipped. To get all credits, device must remain on agreement for entire term and you must keep eligible service on device for entire installment term. Limited time offer; subject to change. Limits: one trade-in per qualifying purchase and one credit per line. May not be combinable with other offers, discounts, or credits. Purchase, financing, other limits, and restrictions apply. Price for iPhone 16 and iPhone 16 Plus includes $30 AT&T connectivity discount. Activation required.
      </p>
      <p class="contacts-info">
        AT&T iPhone 15 Special Deal: Buy an iPhone 15 128 GB and get $514.36 in bill credits applied over 36 months. Buy an iPhone 15 256 GB and get $434.36 in bill credits applied over 36 months. Buy an iPhone 15 512 GB and get $454.36 in bill credits applied over 36 months. Requires upgrade of an existing line (or activation of a new line) and purchase on qualifying 36-month 0% APR installment plan, subject to carrier credit qualification. $0 down for well-qualified customers only, or down payment may be required and depends on a variety of factors. Tax on full retail price due at sale. Requires activation on eligible AT&T unlimited plan. AT&T may temporarily slow data speeds if the network is busy. If you cancel eligible wireless service, credits will stop and you will owe the remaining device balance. Activation/Upgrade Fee: $35. Bill credits are applied as a monthly credit over the 36-month installment plan. Credits start within 3 bills. Will receive catch-up credits once credits start. Wireless line must be on an installment agreement, active, and in good standing for 30 days to qualify. Installment agreement starts when device is shipped. To get all credits, device must remain on agreement for entire term and you must keep eligible service on device for entire installment term. Limited-time offer; subject to change. Limits: one credit per line. May not be combinable with other offers, discounts, or credits. Purchase, financing, other limits, and restrictions apply. Activation required.
      </p>
      <p class="contacts-info">
        AT&T iPhone SE Special Deal: Buy an iPhone SE 64 GB and get $358.36 in bill credits applied over 36 months. Buy an iPhone SE 128 GB and get $264.36 in bill credits applied over 36 months. Buy an iPhone SE 256 GB and get $184.36 in bill credits applied over 36 months. Requires upgrade of an existing line (or activation of a new line) and purchase on qualifying 36-month 0% APR installment plan, subject to carrier credit qualification. $0 down for well-qualified customers only, or down payment may be required and depends on a variety of factors. Tax on full retail price due at sale. Requires activation on eligible AT&T unlimited plan. AT&T may temporarily slow data speeds if the network is busy. If you cancel eligible wireless service, credits will stop and you will owe the remaining device balance. Activation/Upgrade Fee: $35. Bill credits are applied as a monthly credit over the 36-month installment plan. Credits start within 3 bills. Will receive catch-up credits once credits start. Wireless line must be on an installment agreement, active, and in good standing for 30 days to qualify. Installment agreement starts when device is shipped. To get all credits, device must remain on agreement for entire term and you must keep eligible service on device for entire installment term. Limited-time offer; subject to change. Limits: one credit per line. May not be combinable with other offers, discounts, or credits. Purchase, financing, other limits, and restrictions apply. Activation required.
      </p>
      <p class="contacts-info">
        Boost Mobile iPhone 16 Special Deal: Buy an iPhone 16 Pro, iPhone 16 Pro Max, iPhone 16, or iPhone 16 Plus and get $1000 in bill credits (not to exceed the cost of the iPhone) applied over 36 months. No trade-in required. If you are trading in a device with this deal, trade-in value will be applied as additional bill credits over 36 months. Monthly price (if shown) reflects net monthly payment, after application of $1000 in bill credit (not to exceed the cost of the iPhone purchased) and trade-in credit (if applicable) applied over 36 months respectively. Requires activation of a new line, Boost Mobile Infinite Access plan and purchase on qualifying 36-month 0% APR installment plan, subject to carrier credit qualification. After making 12 installment payments, you may upgrade to a new iPhone and get up to $1000 in bill credits (not to exceed the cost of the iPhone) applied over 36 months for the new iPhone on the Infinite Access plan and purchase on new qualifying 36-month 0% APR installment plan, subject to carrier credit qualification. Tax on full retail price due at sale. If you cancel eligible wireless service, credits will stop and you will owe the remaining device balance. Bill credits are applied as a monthly credit over the 36-month installment plan. Trade-in credits start within 3 bills. Installment agreement starts when device is shipped. To get all credits, device must remain on agreement for entire term and you must keep eligible service on device for entire installment term. Limited-time offer; subject to change. Limits: one credit per line. May not be combined with other offers, discounts, or credits. Purchase, financing, other limits, and restrictions apply. Price for iPhone 16 and iPhone 16 Plus includes $30 Boost Mobile connectivity discount. Activation required.
      </p>
      <p class="contacts-info">
        T-Mobile iPhone 16 Special Deal: Monthly price (if shown) reflects net monthly payment, after application of T-Mobile trade-in credit applied over 24 months with purchase of an iPhone 16 Pro, iPhone 16 Pro Max, iPhone 16, or iPhone 16 Plus and trade-in of eligible smartphone. Receive credit with purchase of an iPhone 16 Pro, iPhone 16 Pro Max, iPhone 16, or iPhone 16 Plus of $1000, $800, or $400 for customers on a Go5G Next plan (based upon the model and condition of your trade-in smartphone); or $800 or $400 for customers on a Go5G Plus plan (based upon the model and condition of your trade-in smartphone). Offer excludes customers on Go5G Next First Responder, Go5G Plus First Responder, Go5G Next Military, Go5G Plus Military, Go5G Next 55, and Go5G Plus 55 plans. Max bill credits will not exceed the cost of the device. Credit comprised of (i) Apple instant trade-in credit at checkout and (ii) T-Mobile monthly bill credits applied over 24 months. Allow 2 bill cycles from valid submission and validation of trade-in. Tax on pre-credit price due at sale. Limited-time offer; subject to change. Qualifying credit, data plan, and trade-in in good condition required. Max 4 promotional offers on any iPhone per account. May not be combinable with some offers or discounts. Price for iPhone 16 and iPhone 16 Plus includes $30 T-Mobile connectivity discount. Activation required. Contact T-Mobile before cancelling service to continue remaining bill credits on current device, or credits stop & balance on required finance agreement is due.
      </p>
      <p class="contacts-info">
        T-Mobile iPhone 15 Special Deal: Monthly price (if shown) reflects net monthly payment, after application of T-Mobile trade-in credit applied over 24 months with purchase of an iPhone 15 or iPhone 15 Plus and trade-in of eligible smartphone. Receive credit with purchase of an iPhone 15 or 15 Plus of $1000 , $800, or $400 for customers on a Go5G Next plan (based upon the model and condition of your trade-in smartphone); or $800 or $400 for customers on a Go5G Plus, Go5G, TMO ONE, TMO ONE Plus, Magenta, Magenta MAX, or Magenta Plus plan (based upon the model and condition of your trade-in smartphone). Offer excludes customers on Go5G Next First Responder, Go5G Plus First Responder, Go5G Next Military, Go5G Plus Military, Go5G Next 55, and Go5G Plus 55 plans. Max bill credits will not exceed the cost of the device. Credit comprised of (i) Apple instant trade-in credit at checkout and (ii) T-Mobile monthly bill credits applied over 24 months. Allow 2 bill cycles from valid submission and validation of trade-in. Tax on pre-credit price due at sale. Limited-time offer; subject to change. Qualifying credit, data plan, and trade-in in good condition required. Max 4 promotional offers on any iPhone per account. May not be combinable with some offers or discounts. Price for iPhone 15 and iPhone 15 Plus includes $30 T-Mobile connectivity discount. Activation required. Contact T-Mobile before cancelling service to continue remaining bill credits on current device, or credits stop & balance on required finance agreement is due.
      </p>
      <p class="contacts-info">
        T-Mobile iPhone 14 Special Deal: Monthly price (if shown) reflects net monthly payment, after application of T-Mobile trade-in credit applied over 24 months with purchase of an iPhone 14 or iPhone 14 Plus and trade-in of eligible smartphone. Receive credit with purchase of an iPhone 14 or 14 Plus of $999, $800, or $400 for customers on a Go5G Next plan (based upon the model and condition of your trade-in smartphone); or $800 or $400 for customers on a Go5G Plus plan (based upon the model and condition of your trade-in smartphone). Offer excludes customers on Go5G Next First Responder, Go5G Plus First Responder, Go5G Next Military, Go5G Plus Military, Go5G Next 55, and Go5G Plus 55 plans. Max bill credits will not exceed the cost of the device. Credit comprised of (i) Apple instant trade-in credit at checkout and (ii) T-Mobile monthly bill credits applied over 24 months. Allow 2 bill cycles from valid submission and validation of trade-in. Tax on pre-credit price due at sale. Limited-time offer; subject to change. Qualifying credit, data plan, and trade-in in good condition required. Max 4 promotional offers on any iPhone per account. May not be combinable with some offers or discounts. Price for iPhone 14 and iPhone 14 Plus includes $30 T-Mobile connectivity discount. Activation required. Contact T-Mobile before cancelling service to continue remaining bill credits on current device, or credits stop & balance on required finance agreement is due.
      </p>
      <p class="contacts-info">
        T-Mobile iPhone SE 3 Special Deal: Monthly price (if shown) reflects net monthly payment, after application of T-Mobile trade-in credit applied over 24 months with purchase of an iPhone SE 3 and trade-in of eligible smartphone. Receive credit with purchase of an iPhone SE 3 of $579 or $400 for customers on a Go5G Next plan (based upon the model and condition of your trade-in smartphone); or $579 or $400 for customers on a Go5G Plus plan (based upon the model and condition of your trade-in smartphone). Offer excludes customers on Go5G Next First Responder, Go5G Plus First Responder, Go5G Next Military, Go5G Plus Military, Go5G Next 55, and Go5G Plus 55 plans. Max bill credits will not exceed the cost of the device. Credit comprised of (i) Apple instant trade-in credit at checkout and (ii) T-Mobile monthly bill credits applied over 24 months. Allow 2 bill cycles from valid submission and validation of trade-in. Tax on pre-credit price due at sale. Limited-time offer; subject to change. Qualifying credit, data plan, and trade-in in good condition required. Max 4 promotional offers on any iPhone per account. May not be combinable with some offers or discounts. Activation required. Contact T-Mobile before cancelling service to continue remaining bill credits on current device, or credits stop & balance on required finance agreement is due.
      </p>
      <p class="contacts-info">
        Verizon iPhone 16 Special Deal: Monthly price (if shown) reflects net monthly payment, after application of Verizon trade-in credit applied over 36 months with purchase of an iPhone 16 Pro, iPhone 16 Pro Max, iPhone 16, or iPhone 16 Plus. Customers on an Unlimited Ultimate plan receive: $830 credit (based upon the model and condition of your trade-in smartphone) with purchase of an Phone 16 Pro, iPhone 16 Pro Max, iPhone 16, or iPhone 16 Plus. Customers on an Unlimited Plus plan receive $415 credit (based upon the model and condition of your trade-in smartphone) with purchase of an iPhone 16 Pro, iPhone 16 Pro Max, iPhone 16, or iPhone 16 Plus. Max bill credits will not exceed the cost of the device. Must be an existing Verizon customer. Credit comprised of (i) Apple instant trade-in credit at checkout and (ii) Verizon monthly bill credits applied over 36 months. Customer must remain in the Verizon Device Payment Program for 36 months to receive the full benefit of the Verizon bill credits. Bill credits may take 1-2 bill cycles to appear. If it takes two cycles for bill credits to appear, you'll see the credit for the first cycle on your second bill in addition to that month's credit. Requires purchase and activation of a new iPhone 16 Pro, iPhone 16 Pro Max, iPhone 16, or iPhone 16 Plus with the Verizon Device Payment Program at 0% APR for 36 months, subject to carrier credit qualification, and iPhone availability and limits. Taxes and shipping not included in monthly price. Sales tax may be assessed on full value of new iPhone. Requires eligible unlimited service plan. Requires trade-in of eligible device in eligible condition. Must be at least 18 to trade-in. Apple or its trade-in partners reserve the right to refuse or limit any trade-in transaction for any reason. In-store trade-in requires presentation of a valid, government-issued photo ID (local law may require saving this information). In-store promotion availability subject to local law; speak to a Specialist to learn more. Limited-time offer; subject to change. Additional terms from Apple, Verizon, and Apple's trade-in partners may apply. Price for iPhone 16 and iPhone 16 Plus includes $30 Verizon connectivity discount. Activation required.
      </p>
      <p class="contacts-info">
        ⁺ New subscribers only. $10.99/month after trial. Offer is available for new Apple Music subscribers with a new eligible device for a limited time only. Offer redemption for eligible audio devices requires connecting or pairing to an Apple device running the latest iOS or iPadOS. Offer redemption for Apple Watch requires connecting or pairing to an iPhone running the latest iOS. Offer good for three months after eligible device activation. Only one offer per Apple Account, regardless of the number of eligible devices you purchase. Plan automatically renews until cancelled. Restrictions and other terms(Opens in a new window) apply.
      </p>
      <p class="contacts-info">
        ** New and qualified returning subscribers only. $9.99/month after free trial. Only one offer per Apple Account and only one offer per family if you’re part of a Family Sharing group, regardless of the number of devices you or your family purchases. This offer is not available if you or your Family have previously accepted an Apple TV+ three months free or one year free offer. Offer good for 3 months after eligible device is activated. Plan automatically renews until cancelled. Restrictions and other terms apply.
      </p>
      <p class="contacts-info">
        Apple Pay is a service provided by Apple Payments Services LLC, a subsidiary of Apple Inc. Neither Apple Inc. nor Apple Payments Services LLC is a bank. Any card used in Apple Pay is offered by the card issuer.
      </p>
      <p class="contacts-info">
        We approximate your location from your internet IP address by matching it to a geographic region or from the location entered during your previous visit to Apple.
      </p>
      <hr>
    </div>
  </div>
  <div class="footer-column equal-container">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-sm-6 equal-elem">
          <div class="logo-footer">
            <img  class="logo responsive-logo-footer" src="<c:url value = "/assets/images/trang-den.svg"/>" alt="logo" />
          </div>
          <div class="contacts">
            <p class="contacts-info">
              PINEAPPLE CREATED BY C09-C10 CODEGYMSG
            </p>
            <span class="contacts-info info-address"
            >152 DIEN BIEN PHU, HO CHI MINH CITY</span
            >
            <span class="contacts-info info-phone"
            >(+84) 123 456 7890</span
            >
            <span class="contacts-info info-support"
            >Support@codegym.com</span
            >
          </div>
        </div>
        <div class="col-md-2 col-sm-6 equal-elem">
          <div class="links">
            <h3 class="title-of-section">My account</h3>
            <ul>
              <li><a href="<c:url value = "/auth/login"/>">Sign In</a></li>
              <li><a href="<c:url value = "/cart"/>">View Cart</a></li>
              <li><a href="<c:url value = "/cart"/>">My Wishlist</a></li>
              <li><a href="<c:url value = "/home"/>">Terms & Conditions</a></li>
              <li><a href="<c:url value = "/home"/>">Contact us</a></li>
              <li><a href="<c:url value = "/home"/>">Track My Order</a></li>
              <li><a href="<c:url value = "/home"/>">Help</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-2 col-sm-6 equal-elem">
          <div class="links">
            <h3 class="title-of-section">Information</h3>
            <ul>
              <li><a href="<c:url value = "/home"/>">Specials</a></li>
              <li><a href="<c:url value = "/home"/>">New products</a></li>
              <li><a href="<c:url value = "/home"/>">Best sellers</a></li>
              <li><a href="<c:url value = "/home"/>">Our stores</a></li>
              <li><a href="<c:url value = "/home"/>">Contact us</a></li>
              <li><a href="<c:url value = "/home"/>">Sitemap</a></li>
              <li><a href="<c:url value = "/home"/>">Blog</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 equal-elem">
          <div class="links">
            <h3 class="title-of-section">Newsletter</h3>
            <span class="span-newsletter"
            >Get notified of new products, limited releases, and
                    more.</span
            >
            <div class="newsletter-form">
              <form
                      id="newsletter-validate-detail"
                      class="form subscribe"
              >
                <div class="control">
                  <input
                          type="email"
                          placeholder="Enter your email"
                          id="newsletter"
                          name="email"
                          class="input-subscribe"
                  />
                  <button
                          type="submit"
                          title="Subscribe"
                          class="btn subscribe"
                  >
                    <span>Sign Up</span>
                  </button>
                </div>
              </form>
            </div>
            <div class="socials">
              <a href="<c:url value = "/home"/>" class="social"
              ><i class="fa fa-twitter" aria-hidden="true"></i
              ></a>
              <a href="<c:url value = "/home"/>" class="social"
              ><i class="fa fa-facebook" aria-hidden="true"></i
              ></a>
              <a href="<c:url value = "/home"/>" class="social"
              ><i class="fa fa-pinterest" aria-hidden="true"></i
              ></a>
              <a href="<c:url value = "/home"/>" class="social"
              ><i class="fa fa-instagram" aria-hidden="true"></i
              ></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="copyright full-width">
    <div class="container">
      <div class="copyright-right">
        © Copyright 2025<span> Pineapple</span>. All Rights Reserved.
      </div>
    </div>
  </div>
</footer>
</body>
</html>