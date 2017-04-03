<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    
    <html>
        <head>
            <meta charset="utf-8"></meta>
            <style type="text/css">
            
              h1{
                margin: 20px 10px 10px 400px;
                }
            table{
                background-color: #8FBC8F;
                font-family: verdana;
                font-size: 20px;
                
                }
            tr:nth-child(even){background-color: #FF7F50}
            </style>
        </head>
        <body>
               <h1>Yazarlar</h1>
            <table border="1"> 
                <tr>
                    <td>Yazar Sayısı</td>
                    <td>İsim / Soyisim</td>
                    <td>Ülke</td>
                    <td>Doğum Tarihi</td>
                    <td>Cinsiyet</td>
                    <td>Dil</td>
                </tr>
                <xsl:for-each select="authors/author">                
                <tr>
                    <td><xsl:value-of select="author_id" ></xsl:value-of></td>
                    <td><xsl:value-of select="name" ></xsl:value-of></td>
                    <td><xsl:value-of select="country" ></xsl:value-of></td>
                    <td><xsl:value-of select="birthdate" ></xsl:value-of></td>
                    <td><xsl:value-of select="gender" ></xsl:value-of></td>
                    <td><xsl:value-of select="language" ></xsl:value-of></td>
                </tr>
                </xsl:for-each>
            </table>
        
        </body>    
    </html>     
    
</xsl:template>

</xsl:stylesheet>
