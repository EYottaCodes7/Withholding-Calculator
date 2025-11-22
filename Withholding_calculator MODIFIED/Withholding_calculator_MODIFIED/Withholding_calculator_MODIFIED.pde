import static javax.swing.JOptionPane.*;

float pre_vat;
float post_vat;
float withholding;
float netAmount;

/* calculations;
 - pre-VAT =  post-VAT / 1.15
 - post-VAT = pre-VAT * 1.15
 - withholding = pre-VAT * 0.02
 - net Amount = post-VAT - withholding
 */
void setup () {

  String ProductOrService = showInputDialog ("Enter 'PRODUCT' for products or 'SERVICE' for services");
  String PostOrPre = showInputDialog ("Enter 'POST' for post-vat price or 'PRE' for pre-vat price");
  String price = showInputDialog ("Enter the price");
  float Price = float (price);
  Post (ProductOrService, PostOrPre, Price);
  Pre(ProductOrService, PostOrPre, Price);
}

void Post (String ProductOrService, String PostOrPre, float Price) {
  if (ProductOrService.equals("PRODUCT") || ProductOrService.equals("SERVICE")) {
   if( PostOrPre.equals("POST") && (Price >= 10000 || Price >= 3000)){
  post_vat = Price;
  pre_vat = post_vat / 1.15;
  withholding = pre_vat * 0.02;
  netAmount = post_vat - withholding;

  println ("your pre-vat is: " + pre_vat);
  println ("Withholding: " + withholding);
  println ("Net-Amount: " + netAmount);
    }
  }
  else println("The command you enter isn't correct");
}

void Pre (String ProductOrService, String PostOrPre, float Price) {
  if (ProductOrService.equals("PRODUCT") || ProductOrService.equals("SERVICE")){
  if (PostOrPre.equals("PRE") && (Price >= 10000 || Price >= 3000)) {
    pre_vat = Price; 
  post_vat = pre_vat * 1.15;
  withholding = pre_vat * 0.02;
  netAmount = post_vat - withholding;

  println ("your post-vat is: " + post_vat);
  println ("Withholding: " + withholding);
  println ("Net-Amount: " + netAmount);
  }
  }
  else println("The command you enter isn't correct");
}
