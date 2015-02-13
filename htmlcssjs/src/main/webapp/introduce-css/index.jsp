<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/template/header.jsp" %>

<h1>รู้จักกับ CSS (Cascading Style Sheet)</h1>
<div class="prev-next-button">
    <button onclick="window.location.href = ''">< ย้อนกลับ</button>
    &nbsp;
    <button onclick="window.location.href = ''">ต่อไป > </button>
</div>
<p>
    CSS เป็นภาษา (บางทีก็ไม่เรียกว่าภาษา)  
    <br/>
    ที่ใช้สำหรับ จัดระเบียบ  ตกแต่ง  ความสวยงามของเว็บไซต์
    <br/>
    <br/>
    ใช้สำหรับตกแต่งความสวยงามของ Tag HTML
    <br/>
    เช่น การใส่สี  การกำหนดความกว้าง  ความยาว  การกำหนดขนาดตัวอักษร การจัดตำแหน่งซ้ายขวา ฯลฯ
    <br/>
    <br/>
<div class="message-block">
    ***** ถ้าเปรียบการเขียนเว็บเป็นการสร้างบ้าน
    <br/>
    <br/>
    HTML เป็นเพียงแค่  การวางโครงสร้างบ้าน
    <br/>
    เช่น การลงเสา การใส่ประตู หน้าต่าง รั้ว ระเบียง ...
    แต่ยังไม่มีความสวยงาม
    <br/>
    <br/>
    CSS เปรียบเสมือนการตกแต่งบ้านให้สวยงาม
    <br/>
    บ้านเราจะออกมาเป็นยังไง สวยหรือไม่  
    <br/>
    ก็ขึ้นอยู่กับการทาสี  หรือฝีมือการตกแต่งของเรานั่นเอง
</div>
<hr/>
<h1 id="syntax">Syntax ของ CSS <a href="#syntax">mark</a></h1>
<p>

</p>
<pre>
<code class="css">
    selector {
        property :value;
        property :value;
        property :value;
        property :value;
        ...
    }

</code>
</pre>
เช่น
<pre>
<code class="css">
    .menu-item {
        padding : 10px;
        margin : 5px;
        display : block;
        background-color : #eee;
        color : red;
        font-size : 10pt;
        border : solid 1px #ccc;
    }

</code>
</pre>
<hr/>
<div class="content-left">
    <div class="content-left-content">
        <h3>ตัวอย่างที่ 1</h3>
        example1.html
        <pre>
            <code class="html">
                <%
                    JspUtils.readContent(
                            request.getServletContext().getResourceAsStream("/introduce-css/example1.html"),
                            out
                    );
                %>
            </code>
        </pre>
    </div>
</div>
<div class="content-right">
    <strong>ผลลัพธ์</strong>
    <div class="example-iframe">
        <iframe src="example1.html" style="height: 600px;"></iframe>
        <button class="iframe-reload-button">โหลดผลลัพธ์ใหม่</button>
    </div>
</div>
<div class="clear"></div>
<hr/>
<h1 id="selector">CSS Selector <a href="#selector">mark</a></h1>
<p>
    ในการเขียน CSS นั้น  เราจำเป็นที่จะต้องรู้จักกับ Selector
    เพื่อเลือกว่า  เราจะตกแต่ง Html tag ไหน อย่างไร
    <br/>
    มีทั้งหมด 9 แบบ ได้แก่
    <br/>
    <br/>
    1. Universal Selector<br/>
    2. Type Selector<br/>
    3. Class Selector<br/>
    4. ID Selector<br/>
    5. Contextual Selector<br/>
    6. Pseudo Element และ Pseudo Class Selector<br/>
    7. Direct Child Selector<br/>
    8. Adjacent Sibling Selector<br/>
    9. Attribute Selector<br/>
</p>
<br/>
<br/>
1. <strong class="selector-topic">Universal Selector</strong> คือการ select ทุก element โดยใช้ สัญลักษณ์ * (star)  ดังนี้
<pre>
            <code class="css">
* { /*  ทุก element ในหน้า html นั้นๆ */
    margin : 0px;
    padding : 0px;
    position : static;
    font-family : arial;
    font-size : 10pt;
    background-color : white;
}
            </code>
</pre>
2. <strong class="selector-topic">Type Selector</strong> คือการ select tag html นั่นเอง  เช่น
<pre>
            <code class="html">
&lt;body&gt;
    &lt;span&gt;
        &lt;div&gt;
        &lt;/div&gt;
    &lt;/span&gt;        
&lt;/body&gt;
            </code>
</pre>
<pre>
            <code class="css">
body {
 
}

span {
   background-color : red; /* tag span ทุกตัวจะมี background เป็นสีแดง */
}

div {
   height : 20px; /* tag div ทุกตัวจะมีความสูง 20 pixel */
}
            </code>
</pre>
3. <strong class="selector-topic">Class Selector</strong> คือการ select class css นั่นเอง 
<pre>
            <code class="html">
&lt;body class="project"&gt;
    &lt;span class="wrapper"&gt;
        &lt;div class="in-wrapper"&gt;
        &lt;/div&gt;
    &lt;/span&gt;        
&lt;/body&gt;
            </code>
</pre>
<pre>
            <code class="css">
.project {
    
}

.wrapper {
    position : relative; /* ทุก tag ที่มี class .wrapper อยู่จะมี position เป็น relative */
}

.in-wrapper {  
    font-size : 12pt; /* ทุก tag ที่มี class .in-wrapper อยู่ จะมีขนาดตัวหนังสือ 12 pt */
} 
            </code>
</pre>
4. <strong class="selector-topic">ID Selector</strong> คือการ select tag html ที่มีการกำหนด id เอาไว้ เช่น
<pre>
            <code class="html">
&lt;body id="root"&gt;
    &lt;span id="content-wrapper"&gt;
        &lt;div id="content"&gt;
        &lt;/div&gt;
    &lt;/span&gt;        
&lt;/body&gt;
            </code>
</pre>
<pre>
            <code class="css">
#root { /* tag ที่มี id เป็น root */
   margin : 0px;
   padding : 0px;
}

#content-wrapper {
    width : 100%;
}

#content { /* tag ที่มี id เป็น content */
    border : 1px solid #ddd;
}
            </code>
</pre>
5. <strong class="selector-topic">Contextual Selector</strong>  คือการ  select ทุก element x ที่อยู่ภายใน elemet y หนึ่งๆ  โดยจะส่งผลไปถึงลูก หลาน เหลน โหลน ... ของ element นั้นๆด้วย เช่น
<pre>
            <code class="html">
&lt;body&gt;
    &lt;span&gt; &lt;!-- body span --&gt;
        &lt;div&gt; &lt;!-- body span div --&gt;        
            &lt;p&gt;  
            &lt;/p&gt;
        &lt;/div&gt;        
        &lt;span&gt;  &lt;!-- body span span --&gt;
        &lt;/span&gt;  
        &lt;h1&gt;            
            &lt;a href="#"&gt; &lt;!-- body span h1 a --&gt;
            &lt;/a&gt;
        &lt;/h1&gt;
    &lt;/span&gt;        
&lt;/body&gt;
            </code>
</pre>
<pre>
            <code class="css">
span * { /* ทุก element ใน tag span ซึ่งจะเป็น tag อะไรก็ได้ที่อยู่ใน span */
   position : relative;
}

span div { /* ทุก element div ที่อยู่ภายใน span ไม่ว่าจะเป็นลูก หรือหลาน หรือเหลน ... ก็ได้*/
   min-height : 80px;
   padding : 5px 3px 2px 5px;
}

span h1 a { /* ทุก element a ที่อยูภายใน h1 และ h1 ต้องอยู่ภายใน span เท่านั้น */
    max-width : 500px;
}

span div p { /* ทุก element p ที่อยูภายใน div และ div ต้องอยู่ภายใน span เท่านั้น */
    border : solid #ddd;
    border-width : 1px 0px 2px 1px;
}
            </code>
</pre>
6. <strong class="selector-topic">Pseudo Element</strong> และ <strong class="selector-topic">Pseudo Class Selector</strong> คือการ select โดยมีสัญลักษณ์ : (colon) เข้ามาช่วย  มีหน้าที่พิเศษสำหรับทำงานบางอย่าง ดังนี้
<br/>
<br/>
- <strong>Pseudo Element</strong> ผมมองว่ามันใช้สำหรับ อ้างถึงและกระทำการบางอย่างกับ element  นั้นๆ  เช่น  
<pre>
            <code class="css">
h1:before {
   content:url(smiley.gif); /* หน้า tag h1 ให้แสดงรูปภาพ smiley.gif */
}

h1:after {
   content:url(angry.gif); /* หลัง tag h1 ให้แสดงรูปภาพ angry.gif */
}

p:first-letter { /* ตัวอักษรตัวแรกของ tag p ให้เป็นตัวสีแดง มีขนาดใหญ่ */
    color: red;
    font-size:xx-large;
}

p:first-line {
    color: blue; /* ตัวหนังสือในบรรทัดแรกของ tag p ให้เป็นสีน้ำเงิน */
}

p:first-child {
    background-color: green; /* element ที่อยู่ภายใน p ตัวแรกให้มีพื้นหลังเป็นสีเขียว */
}
            </code>
</pre>
- <strong>Pseudo Class Selector</strong> คล้ายกับ  Pseudo Element แต่หน้าที่ของมีคือการ add remove หรือ สลับสับเปลี่ยน Class ให้กับ element นั้นๆ เช่น
<pre>
            <code class="css">
a:link { /* ทำให้ link ไม่มีเส้นใต้  และ link มีสีน้ำเงิน*/
   text-decoration : none;
   color : blue;
}

a:hover { /* เมื่อเอาเมาส์ไปวางบน link จะเปลี่ยนเป็นสีแดง และมีเส้นใต้*/
   text-decoration : underline;
   color : red;
}

a:active { /* เมื่อทำการคลิก link จะเป็นสีเหลือง ตัวหนังสือหนา และมีเส้นใต้ */
   text-decoration : underline;
   font-weight : bold;
   color : yellow;
}

a:visited { /* link ใดที่เคยเข้าชมแล้ว จะมีสีเขียว ไม่มีเส้นใต้ */
   text-decoration : none;
   color : green;
}
            </code>
</pre>
7. <strong class="selector-topic">Direct Child Selector</strong>  คล้ายๆ Contextual Selector แต่ จะมีผลเฉพาะ ลูกของมันเท่านั้น  จะไม่ส่งผลถึงหลาน เหลน หรือ โหลน เหมือน Contextual
<pre>
            <code class="css">
span > div {  /* div ที่เป็นลูกของ span โดยตรงเท่านั้น */
   width : 600px;
}
 
div > span > a { /* a ซึ่งเป็นลูกของ span และ span ต้องเป็นลูกของ div เท่านั้น */
  color : red;
}
            </code>
</pre>
8. <strong class="selector-topic">Adjacent Sibling Selector</strong> คือการ select element ที่อยู่ติดกัน  และอยู่ในระดับเดียวกันเท่านั้น เช่น
<pre>
            <code class="css">
span + span { /* tag span ที่อยู่ติดกัน และอยู่ในระดับเดียวกันเท่านั้นที่จะมีพื้นหลังเป็นสีแดง */
   background-color : red;
}

div + span {
   color : blue;
}
            </code>
</pre>
9. <strong class="selector-topic">Attribute Selector</strong> เอาไว้ select tag ที่มี attribute ที่มีค่าตามที่กำหนดไว้ เช่น
<pre>
            <code class="css">
div[class=box] { /* tag div ซึ่งมี attribute class เป็น box*/
   background-color : pink;
}

button[class*=primary] { /* tag button ซึ่งมีคำว่า primary อยู่ใน attribute class */
   background-color : pink;
}

a[href$=profile.html]{ /* tag a ซึ่งมี attribute href ลงท้ายด้วย profile.html */
   color : red;
}

span[name^=button][name$=blue]{ /* tag span ซึ่งมี attribute name ขึ้นต้นด้วยคำว่า button และ name ที่ลงท้ายด้วย blue */
   margin : 5px;
}
            </code>
</pre>





<hr/>
<h1 id="writing">รูปแบบการเขียน CSS <a href="#writing">mark</a></h1>
<p>
    การเขียน CSS มีทั้งหมด 3 แบบ ได้แก่
    <br/>
    1. inline
    <br/>
    2. embeded
    <br/>
    3. external
</p>

<h3>inline</h3>
<p>
    เป็นการเขียน CSS บน HTML tag นั้นๆ  โดยตรงเลย
    <br/>
    เขียนบน attribute <span class="sepecific">"syle"</span> ของ tag นั้น  เช่น
    <div class="content-left">
    <div class="content-left-content">
    <pre>
            <code class="css">
<%
                    JspUtils.readContent(
                            request.getServletContext().getResourceAsStream("/introduce-css/example4.html"),
                            out
                    );
                %>
            </code>
</pre>
   </div>
</div>
<div class="content-right">
    <strong>ผลลัพธ์</strong>
    <div class="example-iframe">
        <iframe src="example4.html"></iframe>
        <button class="iframe-reload-button">โหลดผลลัพธ์ใหม่</button>
    </div>
</div>
<div class="clear"></div>
</p>
<h3>embeded</h3>
<p>
    เป็นการแยก CSS ออกจาก HTML tag  
    <br/>
เขียนไว้ใน tag &lt;style&gt;
<br/>
<br/>
เพราะการเขียนแบบ inline มัน fixed code จนเกินไป
<br/>
แก้ไขยากลำบาก  อีกอย่าง  เราไม่สามารถใช้ซ้ำ CSS ที่เราเขียนขึ้นมาได้
<div class="content-left">
    <div class="content-left-content">
    <pre>
            <code class="css">
<%
                    JspUtils.readContent(
                            request.getServletContext().getResourceAsStream("/introduce-css/example5.html"),
                            out
                    );
                %>
            </code>
</pre>
   </div>
</div>
<div class="content-right">
    <strong>ผลลัพธ์</strong>
    <div class="example-iframe">
        <iframe src="example5.html"></iframe>
        <button class="iframe-reload-button">โหลดผลลัพธ์ใหม่</button>
    </div>
</div>
<div class="clear"></div>
</p>
<h3>external</h3>
<p>
    เป็นการแยก CSS ออกจากไฟล์ HTML เลย
    <br/>
บันทึกเป็นไฟล์ .css ต่างหาก  แล้วเรียกใช้  CSS นั้นแทน
<div class="content-left">
    <div class="content-left-content">
    <pre>
            <code class="css">
<%
                    JspUtils.readContent(
                            request.getServletContext().getResourceAsStream("/introduce-css/example6.html"),
                            out
                    );
                %>
            </code>
</pre>
   </div>
</div>
<div class="content-right">
    <strong>ผลลัพธ์</strong>
    <div class="example-iframe">
        <iframe src="example6.html"></iframe>
        <button class="iframe-reload-button">โหลดผลลัพธ์ใหม่</button>
    </div>
</div>
<div class="clear"></div>
</p>

<style>
    .selector-topic{
        color : red;
        font-size: 16pt;
    }
</style>

<%@include file="/template/footer.jsp" %>
