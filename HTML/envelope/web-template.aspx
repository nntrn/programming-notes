<!-- https://www.tcg.com/blog/print-envelopes-via-a-web-site-using-aspnet-and-c/ -->

using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using PdfSharp;
using PdfSharp.Drawing;
using PdfSharp.Pdf;
using PdfSharp.Pdf.IO;
using PdfSharp.Drawing.Layout;

public partial class envelope_test : System.Web.UI.Page
{
    protected PdfPage getNewPage()
    {
        PdfPage page = new PdfPage();
        XUnit pdfWidth = new XUnit(4.125, XGraphicsUnit.Inch);
        XUnit pdfHeight = new XUnit(9.5, XGraphicsUnit.Inch);
        page.Height = pdfHeight;
        page.Width = pdfWidth;
        page.Orientation = PageOrientation.Landscape;
        return page;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Clear();
        Response.ContentType = System.Net.Mime.MediaTypeNames.Application.Pdf;
        PdfDocument document = new PdfDocument();
        PdfPage page = getNewPage();
        document.AddPage(page);        
        XGraphics gfx = XGraphics.FromPdfPage(page);

        // Create a font
        XFont font = new XFont("Verdana", 12);
        // Draw the text
        double x = page.Width.Point / 3;
        double y = page.Height.Point / 2;
        gfx.DrawString(@"Al Crowley", font, XBrushes.Black, new XPoint(x,y));
        gfx.DrawString(@"1 Oak Ave.", font, XBrushes.Black, new XPoint(x, y + 12 * 1.5));
        gfx.DrawString(@"Marmora, NJ 08223", font, XBrushes.Black, new  XPoint(x, y + 12 * 3));

        page = getNewPage();
        document.AddPage(page);
        gfx = XGraphics.FromPdfPage(page);

        gfx.DrawString(@"Joe Smith", font, XBrushes.Black, new XPoint(x, y));
        gfx.DrawString(@"1 Fairview Drive", font, XBrushes.Black, new XPoint(x, y + 12 * 1.5));
        gfx.DrawString(@"Marmora, NJ 08223", font, XBrushes.Black, new XPoint(x, y + 12 * 3));

        System.IO.MemoryStream ms = new System.IO.MemoryStream();
        document.Save(ms);

        Response.Clear();
        Response.ContentType = "application/pdf";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.BinaryWrite(ms.ToArray());
        Response.Flush();
        ms.Close();
        Response.End();

        // For testing purposes, also save the file locally 
        document.Save(@"c:\temp\env.pdf");
    }
}