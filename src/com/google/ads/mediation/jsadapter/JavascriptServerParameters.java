package com.google.ads.mediation.jsadapter;

import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.MediationServerParameters.Parameter;

public class JavascriptServerParameters
  extends MediationServerParameters
{
  @MediationServerParameters.Parameter(name="adxtym_height", required=false)
  public Integer height;
  @MediationServerParameters.Parameter(name="adxtym_html", required=true)
  public String htmlScript;
  @MediationServerParameters.Parameter(name="adxtym_passback_url", required=false)
  public String passBackUrl;
  @MediationServerParameters.Parameter(name="adxtym_width", required=false)
  public Integer width;
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.ads.mediation.jsadapter.JavascriptServerParameters
 * JD-Core Version:    0.7.0.1
 */