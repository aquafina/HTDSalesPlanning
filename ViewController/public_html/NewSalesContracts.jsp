<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1">
    <af:messages id="m1"/>
    <af:form id="f1">
      <af:pageTemplate viewId="/AppTemplate.jspx" id="pt1">
        <f:facet name="content">
          <af:panelGroupLayout id="pgl1" layout="scroll"
                               inlineStyle="padding-left:18.0px; padding-right:18.0px;margin-top:8px">
            <af:panelBox text="Customer PO" id="pb1" background="medium">
              <f:facet name="toolbar"/>
              <af:panelFormLayout id="pfl1" rows="25" maxColumns="2">
                <af:selectOneChoice value="#{bindings.ProgramName.inputValue}"
                                    label="Program Name:"
                                    disabled="#{bindings.ProgramName.attributeValue != null}"
                                    shortDesc="#{bindings.ProgramName.hints.tooltip}"
                                    id="soc3" autoSubmit="true" required="true">
                  <f:selectItems value="#{bindings.ProgramName.items}"
                                 id="si7"/>
                </af:selectOneChoice>
                <af:inputText value="#{bindings.CustomerName.inputValue}"
                              label="Customer  Name:"
                              required="#{bindings.CustomerName.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.CustomerName.hints.precision}"
                              shortDesc="#{bindings.CustomerName.hints.tooltip}"
                              id="it22" readOnly="true" disabled="true">
                  <f:validator binding="#{bindings.CustomerName.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.CustPoNo1.inputValue}"
                              label="Customer PO #:"
                              required="#{bindings.CustPoNo1.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.CustPoNo1.hints.precision}"
                              readOnly="#{bindings.CustPoNo1.inputValue != null}"
                              shortDesc="#{bindings.CustPoNo1.hints.tooltip}"
                              id="it34">
                  <f:validator binding="#{bindings.CustPoNo1.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.PoType.inputValue}"
                              label="#{bindings.PoType.hints.label}"
                              required="#{bindings.PoType.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.PoType.hints.precision}"
                              shortDesc="#{bindings.PoType.hints.tooltip}"
                              id="it2" visible="false">
                  <f:validator binding="#{bindings.PoType.validator}"/>
                </af:inputText>
                <af:selectOneChoice value="#{bindings.Potypemeaning.inputValue}"
                                    label="PO Type:"
                                    required="#{bindings.Potypemeaning.hints.mandatory}"
                                    shortDesc="#{bindings.Potypemeaning.hints.tooltip}"
                                    disabled="#{bindings.Potypemeaning.attributeValue != null}"
                                    id="soc7">
                  <f:selectItems value="#{bindings.Potypemeaning.items}"
                                 id="si2"/>
                </af:selectOneChoice>
                <af:selectOneChoice value="#{bindings.ShipModeL.inputValue}"
                                    label="Ship Model:"
                                    required="#{bindings.ShipModeL.hints.mandatory}"
                                    shortDesc="#{bindings.ShipModeL.hints.tooltip}"
                                    id="soc5">
                  <f:selectItems value="#{bindings.ShipModeL.items}" id="si10"/>
                </af:selectOneChoice>
                <af:selectOneChoice value="#{bindings.BookMonth.inputValue}"
                                    label="Booking Month:"
                                    disabled="#{bindings.BookMonth.attributeValue != null}"
                                    required="#{bindings.BookMonth.hints.mandatory}"
                                    shortDesc="#{bindings.BookMonth.hints.tooltip}"
                                    id="soc6">
                  <f:selectItems value="#{bindings.BookMonth.items}" id="si6"/>
                </af:selectOneChoice>
                <af:inputText value="#{bindings.SalesContractNo.inputValue}"
                              label="Sales Contract #:"
                              required="#{bindings.SalesContractNo.hints.mandatory}"
                              columns="25"
                              readOnly="#{bindings.SalesContractNo.inputValue != null}"
                              maximumLength="#{bindings.SalesContractNo.hints.precision}"
                              shortDesc="#{bindings.SalesContractNo.hints.tooltip}"
                              id="it16">
                  <f:validator binding="#{bindings.SalesContractNo.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.DyeingWoNo.inputValue}"
                              label="Dyeing Work Order #:"
                              required="#{bindings.DyeingWoNo.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.DyeingWoNo.hints.precision}"
                              shortDesc="#{bindings.DyeingWoNo.hints.tooltip}"
                              id="it17">
                  <f:validator binding="#{bindings.DyeingWoNo.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.GreigeContractNo.inputValue}"
                              label="Greige Contract #:"
                              required="#{bindings.GreigeContractNo.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.GreigeContractNo.hints.precision}"
                              shortDesc="#{bindings.GreigeContractNo.hints.tooltip}"
                              id="it1">
                  <f:validator binding="#{bindings.GreigeContractNo.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.Value.inputValue}"
                              label="Value:"
                              required="#{bindings.Value.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.Value.hints.precision}"
                              shortDesc="#{bindings.Value.hints.tooltip}"
                              id="it4">
                  <f:validator binding="#{bindings.Value.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.Value.format}"/>
                </af:inputText>
                <af:inputDate value="#{bindings.DyeingInputDate.inputValue}"
                              label="Dyeing Input Date:"
                              required="#{bindings.DyeingInputDate.hints.mandatory}"
                              shortDesc="#{bindings.DyeingInputDate.hints.tooltip}"
                              disabled="false" id="id10">
                  <f:validator binding="#{bindings.DyeingInputDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.DyeingInputDate.format}"/>
                </af:inputDate>
                <af:inputDate value="#{bindings.InspectionDate.inputValue}"
                              label="Inspection Date:"
                              required="#{bindings.InspectionDate.hints.mandatory}"
                              shortDesc="#{bindings.InspectionDate.hints.tooltip}"
                              id="id3" partialTriggers="id1"
                              binding="#{HandlerBean.idateInspection}"
                              disabled="true">
                  <f:validator binding="#{bindings.InspectionDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.InspectionDate.format}"/>
                </af:inputDate>
                <af:selectOneRadio value="#{bindings.InspectionDone.inputValue}"
                                   label="Inspection Done:"
                                   required="#{bindings.InspectionDone.hints.mandatory}"
                                   shortDesc="#{bindings.InspectionDone.hints.tooltip}"
                                   id="sor2" partialTriggers="id1">
                  <f:selectItems value="#{bindings.InspectionDone.items}"
                                 id="si9"/>
                </af:selectOneRadio>
                <af:inputText value="#{bindings.CstkPl.inputValue}"
                              label="CSTK/PL:"
                              required="#{bindings.CstkPl.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.CstkPl.hints.precision}"
                              shortDesc="#{bindings.CstkPl.hints.tooltip}"
                              id="it10">
                  <f:validator binding="#{bindings.CstkPl.validator}"/>
                </af:inputText>
                <af:inputDate value="#{bindings.AccessoriesOrderDate.inputValue}"
                              label="Accessories Order Date:"
                              required="#{bindings.AccessoriesOrderDate.hints.mandatory}"
                              shortDesc="#{bindings.AccessoriesOrderDate.hints.tooltip}"
                              id="id4" columns="25">
                  <f:validator binding="#{bindings.AccessoriesOrderDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.AccessoriesOrderDate.format}"/>
                </af:inputDate>
                <af:inputText value="#{bindings.Accessories.inputValue}"
                              label="Accessories:"
                              required="#{bindings.Accessories.hints.mandatory}"
                              columns="50"
                              maximumLength="#{bindings.Accessories.hints.precision}"
                              shortDesc="#{bindings.Accessories.hints.tooltip}"
                              rows="4" id="it9" visible="true">
                  <f:validator binding="#{bindings.Accessories.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.MoNo.inputValue}"
                              label="Move Order #:"
                              required="#{bindings.MoNo.hints.mandatory}"
                              columns="50" rows="4"
                              maximumLength="#{bindings.MoNo.hints.precision}"
                              shortDesc="#{bindings.MoNo.hints.tooltip}"
                              id="it15" readOnly="true">
                  <f:validator binding="#{bindings.MoNo.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.ViewerNote.inputValue}"
                              label="Viewer Note:"
                              required="#{bindings.ViewerNote.hints.mandatory}"
                              columns="50"
                              maximumLength="#{bindings.ViewerNote.hints.precision}"
                              shortDesc="#{bindings.ViewerNote.hints.tooltip}"
                              id="it12" readOnly="false" rows="4"
                              disabled="true">
                  <f:validator binding="#{bindings.ViewerNote.validator}"/>
                </af:inputText>
                <af:inputText label="Label 1" id="it355" visible="false"/>
                <af:inputText label="Label 1" id="it363" visible="false"/>
                <af:inputText label="Label 1" id="it373" visible="false"/>
                <af:inputText label="Label 1" id="it383" visible="false"/>
                <af:inputText label="Label 1" id="it393" visible="false"/>
                <af:inputText label="Label 1" id="it403" visible="false"/>
                <af:inputText label="Label 1" id="it4131" visible="false"/>
                <af:inputText label="Label 1" id="it3733" visible="false"/>
                <af:inputText label="Label 1" id="it3832" visible="false"/>
                <af:inputText label="Label 1" id="it3932" visible="false"/>
                <af:inputText label="Label 1" id="it353" visible="false"/>
                <af:inputText label="Label 1" id="it36" visible="false"/>
                <af:inputText label="Label 1" id="it37" visible="false"/>
                <af:inputText label="Label 1" id="it38" visible="false"/>
                <af:inputText label="Label 1" id="it39" visible="false"/>
                <af:inputText label="Label 1" id="it40" visible="false"/>
                <af:inputText label="Label 1" id="it411" visible="false"/>
                <af:inputText label="Label 1" id="it3723" visible="false"/>
                <af:inputText label="Label 1" id="it382" visible="false"/>
                <af:inputText label="Label 1" id="it392" visible="false"/>
                <af:inputText label="Label 1" id="it401" visible="false"/>
                
                <af:inputText label="Label 1" id="it328" visible="false"/>
                <af:inputText label="Label 1" id="it329" visible="false"/>
                <af:inputText label="Label 1" id="it420" visible="false"/>
                <af:inputText value="#{bindings.ProgramManager.inputValue}"
                              label="Program Manager:"
                              required="#{bindings.ProgramManager.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.ProgramManager.hints.precision}"
                              shortDesc="#{bindings.ProgramManager.hints.tooltip}"
                              id="it8" readOnly="true" disabled="true">
                  <f:validator binding="#{bindings.ProgramManager.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.ProgramPhase.inputValue}"
                              label="Program Phase:"
                              required="#{bindings.ProgramPhase.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.ProgramPhase.hints.precision}"
                              shortDesc="#{bindings.ProgramPhase.hints.tooltip}"
                              id="it13" readOnly="true" disabled="true">
                  <f:validator binding="#{bindings.ProgramPhase.validator}"/>
                </af:inputText>
                <af:selectOneChoice value="#{bindings.PoStatus.inputValue}"
                                    label="PO Status:"
                                    required="#{bindings.PoStatus.hints.mandatory}"
                                    shortDesc="#{bindings.PoStatus.hints.tooltip}"
                                    id="soc1">
                  <f:selectItems value="#{bindings.PoStatus.items}" id="si3"/>
                </af:selectOneChoice>
                <af:inputDate value="#{bindings.PoRecDate.inputValue}"
                              label="PO Recording Date:"
                              required="#{bindings.PoRecDate.hints.mandatory}"
                              shortDesc="#{bindings.PoRecDate.hints.tooltip}"
                              readOnly="#{bindings.PoRecDate.inputValue != null}"
                              id="id6" columns="25">
                  <f:validator binding="#{bindings.PoRecDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.PoRecDate.format}"/>
                </af:inputDate>
                <af:selectOneChoice value="#{bindings.ShipTerm.inputValue}"
                                    label="Ship Term:"
                                    required="#{bindings.ShipTerm.hints.mandatory}"
                                    shortDesc="#{bindings.ShipTerm.hints.tooltip}"
                                    id="soc8">
                  <f:selectItems value="#{bindings.ShipTerm.items}" id="si5"/>
                </af:selectOneChoice>
                <af:inputDate value="#{bindings.ShipmentDate.inputValue}"
                              label="Shipment Date:"
                              required="#{bindings.ShipmentDate.hints.mandatory}"
                              shortDesc="#{bindings.ShipmentDate.hints.tooltip}"
                              readOnly="#{bindings.ShipmentDate.inputValue != null}"
                              id="id11" columns="25">
                  <f:validator binding="#{bindings.ShipmentDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.ShipmentDate.format}"/>
                </af:inputDate>
                <af:inputText value="#{bindings.LcStatus.inputValue}"
                              label="Payment Status:"
                              required="#{bindings.LcStatus.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.LcStatus.hints.precision}"
                              shortDesc="#{bindings.LcStatus.hints.tooltip}"
                              id="it5">
                  <f:validator binding="#{bindings.LcStatus.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.DyeingStatus.inputValue}"
                              label="Dyeing Status:"
                              required="#{bindings.DyeingStatus.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.DyeingStatus.hints.precision}"
                              shortDesc="#{bindings.DyeingStatus.hints.tooltip}"
                              id="it11">
                  <f:validator binding="#{bindings.DyeingStatus.validator}"/>
                </af:inputText>
                <af:inputDate value="#{bindings.GreigeCompletionDate.inputValue}"
                              label="Greige Completion Date:"
                              required="#{bindings.GreigeCompletionDate.hints.mandatory}"
                              shortDesc="#{bindings.GreigeCompletionDate.hints.tooltip}"
                              readOnly="#{bindings.GreigeCompletionDate.inputValue != null}"
                              id="id2" columns="25">
                  <f:validator binding="#{bindings.GreigeCompletionDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.GreigeCompletionDate.format}"/>
                </af:inputDate>
                <af:selectOneChoice value="#{bindings.CurrencyCode.inputValue}"
                                    label="Currency Code"
                                    required="#{bindings.CurrencyCode.hints.mandatory}"
                                    shortDesc="#{bindings.CurrencyCode.hints.tooltip}"
                                    id="soc2">
                  <f:selectItems value="#{bindings.CurrencyCode.items}"
                                 id="si11"/>
                </af:selectOneChoice>
                <af:inputDate value="#{bindings.ExMill.inputValue}"
                              label="EX-Mill:"
                              required="#{bindings.ExMill.hints.mandatory}"
                              shortDesc="#{bindings.ExMill.hints.tooltip}"
                              id="id1" columns="25"
                              validator="#{HandlerBean.id1_validator}"
                              autoSubmit="true">
                  <f:validator binding="#{bindings.ExMill.validator}"/>
                  <af:convertDateTime pattern="#{bindings.ExMill.format}"/>
                </af:inputDate>
                <af:inputDate value="#{bindings.ContainerBookingDate.inputValue}"
                              label="Container Booking Date:"
                              required="#{bindings.ContainerBookingDate.hints.mandatory}"
                              shortDesc="#{bindings.ContainerBookingDate.hints.tooltip}"
                              id="id5" columns="25" partialTriggers="id1"
                              binding="#{HandlerBean.idateBooking}"
                              disabled="true">
                  <f:validator binding="#{bindings.ContainerBookingDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.ContainerBookingDate.format}"/>
                </af:inputDate>
                <af:selectOneRadio value="#{bindings.ContainerBooked.inputValue}"
                                   label="Container Booked:"
                                   required="#{bindings.ContainerBooked.hints.mandatory}"
                                   shortDesc="#{bindings.ContainerBooked.hints.tooltip}"
                                   id="sor1">
                  <f:selectItems value="#{bindings.ContainerBooked.items}"
                                 id="si8"/>
                </af:selectOneRadio>
                <af:inputText value="#{bindings.Ner.inputValue}" label="NER:"
                              required="#{bindings.Ner.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.Ner.hints.precision}"
                              shortDesc="#{bindings.Ner.hints.tooltip}"
                              id="it6">
                  <f:validator binding="#{bindings.Ner.validator}"/>
                </af:inputText>
                <af:inputDate value="#{bindings.StitchInputDate.inputValue}"
                              label="Stitch Input Date:"
                              required="#{bindings.StitchInputDate.hints.mandatory}"
                              shortDesc="#{bindings.StitchInputDate.hints.tooltip}"
                              disabled="false" id="id7" columns="25">
                  <f:validator binding="#{bindings.StitchInputDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.StitchInputDate.format}"/>
                </af:inputDate>
                <af:inputDate value="#{bindings.BookingMonth.inputValue}"
                              label="#{bindings.BookingMonth.hints.label}"
                              required="#{bindings.BookingMonth.hints.mandatory}"
                              shortDesc="#{bindings.BookingMonth.hints.tooltip}"
                              visible="false" id="id8" columns="25">
                  <f:validator binding="#{bindings.BookingMonth.validator}"/>
                  <af:convertDateTime pattern="#{bindings.BookingMonth.format}"/>
                </af:inputDate>
                <af:inputText value="#{bindings.Remarks.inputValue}"
                              label="Purchasing Remarks:"
                              required="#{bindings.Remarks.hints.mandatory}"
                              columns="50"
                              maximumLength="#{bindings.Remarks.hints.precision}"
                              shortDesc="#{bindings.Remarks.hints.tooltip}"
                              id="it20" rows="4" readOnly="false"
                              disabled="true" visible="false">
                  <f:validator binding="#{bindings.Remarks.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.CreatedBy.inputValue}"
                              label="#{bindings.CreatedBy.hints.label}"
                              required="#{bindings.CreatedBy.hints.mandatory}"
                              columns="#{bindings.CreatedBy.hints.displayWidth}"
                              maximumLength="#{bindings.CreatedBy.hints.precision}"
                              shortDesc="#{bindings.CreatedBy.hints.tooltip}"
                              id="it3" visible="false">
                  <f:validator binding="#{bindings.CreatedBy.validator}"/>
                </af:inputText>
                <af:inputDate value="#{bindings.CreationDate.inputValue}"
                              label="#{bindings.CreationDate.hints.label}"
                              required="#{bindings.CreationDate.hints.mandatory}"
                              shortDesc="#{bindings.CreationDate.hints.tooltip}"
                              id="id9" visible="false">
                  <f:validator binding="#{bindings.CreationDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.CreationDate.format}"/>
                </af:inputDate>
                <af:inputDate value="#{bindings.LastUpdateDate.inputValue}"
                              label="#{bindings.LastUpdateDate.hints.label}"
                              required="#{bindings.LastUpdateDate.hints.mandatory}"
                              shortDesc="#{bindings.LastUpdateDate.hints.tooltip}"
                              id="id12" visible="false">
                  <f:validator binding="#{bindings.LastUpdateDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.LastUpdateDate.format}"/>
                </af:inputDate>
                <af:inputText value="#{bindings.LastUpdatedBy.inputValue}"
                              label="#{bindings.LastUpdatedBy.hints.label}"
                              required="#{bindings.LastUpdatedBy.hints.mandatory}"
                              columns="#{bindings.LastUpdatedBy.hints.displayWidth}"
                              maximumLength="#{bindings.LastUpdatedBy.hints.precision}"
                              shortDesc="#{bindings.LastUpdatedBy.hints.tooltip}"
                              id="it19" visible="false">
                  <f:validator binding="#{bindings.LastUpdatedBy.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.PoStatusLookupCode.inputValue}"
                              label="#{bindings.PoStatusLookupCode.hints.label}"
                              required="#{bindings.PoStatusLookupCode.hints.mandatory}"
                              columns="#{bindings.PoStatusLookupCode.hints.displayWidth}"
                              maximumLength="#{bindings.PoStatusLookupCode.hints.precision}"
                              shortDesc="#{bindings.PoStatusLookupCode.hints.tooltip}"
                              id="it7" visible="false">
                  <f:validator binding="#{bindings.PoStatusLookupCode.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.ProgramId.inputValue}"
                              label="#{bindings.ProgramId.hints.label}"
                              required="#{bindings.ProgramId.hints.mandatory}"
                              columns="#{bindings.ProgramId.hints.displayWidth}"
                              maximumLength="#{bindings.ProgramId.hints.precision}"
                              shortDesc="#{bindings.ProgramId.hints.tooltip}"
                              id="it24" visible="false">
                  <f:validator binding="#{bindings.ProgramId.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.ProgramId.format}"/>
                </af:inputText>
                <af:inputText value="#{bindings.ShipMode.inputValue}"
                              label="#{bindings.ShipMode.hints.label}"
                              required="#{bindings.ShipMode.hints.mandatory}"
                              columns="#{bindings.ShipMode.hints.displayWidth}"
                              maximumLength="#{bindings.ShipMode.hints.precision}"
                              shortDesc="#{bindings.ShipMode.hints.tooltip}"
                              id="it14" visible="false">
                  <f:validator binding="#{bindings.ShipMode.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.SpHeaderId.inputValue}"
                              label="#{bindings.SpHeaderId.hints.label}"
                              required="#{bindings.SpHeaderId.hints.mandatory}"
                              columns="#{bindings.SpHeaderId.hints.displayWidth}"
                              maximumLength="#{bindings.SpHeaderId.hints.precision}"
                              shortDesc="#{bindings.SpHeaderId.hints.tooltip}"
                              id="it21" visible="false">
                  <f:validator binding="#{bindings.SpHeaderId.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.SpHeaderId.format}"/>
                </af:inputText>
                <af:inputText value="#{bindings.VersionNumber.inputValue}"
                              label="#{bindings.VersionNumber.hints.label}"
                              required="#{bindings.VersionNumber.hints.mandatory}"
                              columns="#{bindings.VersionNumber.hints.displayWidth}"
                              maximumLength="#{bindings.VersionNumber.hints.precision}"
                              shortDesc="#{bindings.VersionNumber.hints.tooltip}"
                              id="it23" visible="false">
                  <f:validator binding="#{bindings.VersionNumber.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.VersionNumber.format}"/>
                </af:inputText>
                <af:selectOneChoice value="#{bindings.Customer.inputValue}"
                                    label="#{bindings.Customer.label}"
                                    required="#{bindings.Customer.hints.mandatory}"
                                    shortDesc="#{bindings.Customer.hints.tooltip}"
                                    id="soc4" visible="false">
                  <f:selectItems value="#{bindings.Customer.items}" id="si1"/>
                </af:selectOneChoice>
                <af:inputText value="#{bindings.Delivery.inputValue}"
                              label="Delivery:"
                              required="#{bindings.Delivery.hints.mandatory}"
                              columns="50" rows="4"
                              maximumLength="#{bindings.Delivery.hints.precision}"
                              shortDesc="#{bindings.Delivery.hints.tooltip}"
                              id="it18" readOnly="true">
                  <f:validator binding="#{bindings.Delivery.validator}"/>
                </af:inputText>
                <f:facet name="footer">
                  <af:panelGroupLayout layout="horizontal" id="pgl2">
                    <af:commandButton actionListener="#{bindings.First.execute}"
                                      text="First" visible="false"
                                      disabled="#{!bindings.First.enabled}"
                                      partialSubmit="true" id="cb3"/>
                    <af:commandButton actionListener="#{bindings.Previous.execute}"
                                      text="Previous" visible="false"
                                      disabled="#{!bindings.Previous.enabled}"
                                      partialSubmit="true" id="cb4"/>
                    <af:commandButton actionListener="#{bindings.Next.execute}"
                                      text="Next" visible="false"
                                      disabled="#{!bindings.Next.enabled}"
                                      partialSubmit="true" id="cb1"/>
                    <af:commandButton actionListener="#{bindings.Last.execute}"
                                      text="Last" visible="false"
                                      disabled="#{!bindings.Last.enabled}"
                                      partialSubmit="true" id="cb2"/>
                    <af:commandButton actionListener="#{bindings.CreateInsert.execute}"
                                      text="New" visible="false"
                                      disabled="#{!bindings.CreateInsert.enabled}"
                                      id="cb5"/>
                    <af:commandButton actionListener="#{bindings.Commit.execute}"
                                      text="Save" visible="false" id="cb6"/>
                  </af:panelGroupLayout>
                </f:facet>
                <af:inputText value="#{bindings.ThirdPartyAudit.inputValue}"
                              label="#{bindings.ThirdPartyAudit.hints.label}"
                              required="#{bindings.ThirdPartyAudit.hints.mandatory}"
                              maximumLength="#{bindings.ThirdPartyAudit.hints.precision}"
                              shortDesc="#{bindings.ThirdPartyAudit.hints.tooltip}"
                              id="it41" columns="25">
                  <f:validator binding="#{bindings.ThirdPartyAudit.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.Carton.inputValue}"
                              label="#{bindings.Carton.hints.label}"
                              required="#{bindings.Carton.hints.mandatory}"
                              maximumLength="#{bindings.Carton.hints.precision}"
                              shortDesc="#{bindings.Carton.hints.tooltip}"
                              id="it42" columns="25" disabled="true">
                  <f:validator binding="#{bindings.Carton.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.Stiffers.inputValue}"
                              label="#{bindings.Stiffers.hints.label}"
                              required="#{bindings.Stiffers.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.Stiffers.hints.precision}"
                              shortDesc="#{bindings.Stiffers.hints.tooltip}"
                              id="it43" disabled="true">
                  <f:validator binding="#{bindings.Stiffers.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.Inserts.inputValue}"
                              label="#{bindings.Inserts.hints.label}"
                              required="#{bindings.Inserts.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.Inserts.hints.precision}"
                              shortDesc="#{bindings.Inserts.hints.tooltip}"
                              id="it44" disabled="true">
                  <f:validator binding="#{bindings.Inserts.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.CareLabel.inputValue}"
                              label="#{bindings.CareLabel.hints.label}"
                              required="#{bindings.CareLabel.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.CareLabel.hints.precision}"
                              shortDesc="#{bindings.CareLabel.hints.tooltip}"
                              id="it45" disabled="true">
                  <f:validator binding="#{bindings.CareLabel.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.Bags.inputValue}"
                              label="#{bindings.Bags.hints.label}"
                              required="#{bindings.Bags.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.Bags.hints.precision}"
                              shortDesc="#{bindings.Bags.hints.tooltip}"
                              id="it46" disabled="true">
                  <f:validator binding="#{bindings.Bags.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.NormalThread.inputValue}"
                              label="#{bindings.NormalThread.hints.label}"
                              required="#{bindings.NormalThread.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.NormalThread.hints.precision}"
                              shortDesc="#{bindings.NormalThread.hints.tooltip}"
                              id="it47" disabled="true">
                  <f:validator binding="#{bindings.NormalThread.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.SylkoThread.inputValue}"
                              label="#{bindings.SylkoThread.hints.label}"
                              required="#{bindings.SylkoThread.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.SylkoThread.hints.precision}"
                              shortDesc="#{bindings.SylkoThread.hints.tooltip}"
                              id="it48" disabled="true">
                  <f:validator binding="#{bindings.SylkoThread.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.ElasticCordFusing.inputValue}"
                              label="#{bindings.ElasticCordFusing.hints.label}"
                              required="#{bindings.ElasticCordFusing.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.ElasticCordFusing.hints.precision}"
                              shortDesc="#{bindings.ElasticCordFusing.hints.tooltip}"
                              id="it49" disabled="true">
                  <f:validator binding="#{bindings.ElasticCordFusing.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.InhouseStickers.inputValue}"
                              label="#{bindings.InhouseStickers.hints.label}"
                              required="#{bindings.InhouseStickers.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.InhouseStickers.hints.precision}"
                              shortDesc="#{bindings.InhouseStickers.hints.tooltip}"
                              id="it50" disabled="true">
                  <f:validator binding="#{bindings.InhouseStickers.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.Misc.inputValue}"
                              label="#{bindings.Misc.hints.label}"
                              required="#{bindings.Misc.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.Misc.hints.precision}"
                              shortDesc="#{bindings.Misc.hints.tooltip}"
                              id="it51" disabled="true">
                  <f:validator binding="#{bindings.Misc.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.ImportedMisc.inputValue}"
                              label="#{bindings.ImportedMisc.hints.label}"
                              required="#{bindings.ImportedMisc.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.ImportedMisc.hints.precision}"
                              shortDesc="#{bindings.ImportedMisc.hints.tooltip}"
                              id="it52" disabled="true">
                  <f:validator binding="#{bindings.ImportedMisc.validator}"/>
                </af:inputText>
                <af:panelGroupLayout id="pgl9" layout="horizontal"
                                     inlineStyle="width:200px;">
                  <af:commandButton
                                    text="Save" id="commandButton7"
                                    inlineStyle="width:105.0px; text-align:center;"
                                    iconPosition="leading"
                                    partialSubmit="true"
                                    icon="/images/save.png"
                                    action="#{HandlerBean.anotherSaveButton}">
                                    <af:clientListener method="enforcePreventUserInput"
                                       type="action"/>
                                       </af:commandButton>
                  <af:commandButton actionListener="#{bindings.Rollback.execute}"
                                    text="Cancel" disabled="false"
                                    immediate="true" id="commandButton8"
                                    inlineStyle="width:105.0px; text-align:center;"
                                    icon="/images/cancel.png">
                    <af:resetActionListener/>
                  </af:commandButton>
                </af:panelGroupLayout>
              </af:panelFormLayout>
            </af:panelBox>
            <af:panelBox text="Articals" id="pb2" background="medium">
              <f:facet name="toolbar"/>
              <af:commandButton actionListener="#{bindings.CreateInsert1.execute}"
                                text="New Artical"
                                disabled="#{!bindings.CreateInsert1.enabled}"
                                id="cb7"/>
              <af:table value="#{bindings.VO_SalesPlanningLines2.collectionModel}"
                        var="row"
                        rows="#{bindings.VO_SalesPlanningLines2.rangeSize}"
                        emptyText="#{bindings.VO_SalesPlanningLines2.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.VO_SalesPlanningLines2.rangeSize}"
                        rowBandingInterval="0"
                        filterModel="#{bindings.VO_SalesPlanningLines2Query.queryDescriptor}"
                        queryListener="#{bindings.VO_SalesPlanningLines2Query.processQuery}"
                        filterVisible="true" varStatus="vs"
                        selectionListener="#{bindings.VO_SalesPlanningLines2.collectionModel.makeCurrent}"
                        rowSelection="multiple" id="t1" partialTriggers="::cb7"
                        width="100%">
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.name}"
                           sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.label}"
                           id="c5" visible="false">
                  <af:inputText value="#{row.bindings.ArticleId.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.tooltip}"
                                id="it25">
                    <f:validator binding="#{row.bindings.ArticleId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.name}"
                           sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.label}"
                           id="c10" visible="false">
                  <af:inputText value="#{row.bindings.CreatedBy.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.tooltip}"
                                id="it32">
                    <f:validator binding="#{row.bindings.CreatedBy.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.Article.name}"
                           filterable="false" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.Article.label}"
                           id="c12">
                  <af:selectOneChoice value="#{row.bindings.Article.inputValue}"
                                      label="#{row.bindings.Article.label}"
                                      required="#{bindings.VO_SalesPlanningLines2.hints.Article.mandatory}"
                                      shortDesc="#{bindings.VO_SalesPlanningLines2.hints.Article.tooltip}"
                                      id="soc9">
                    <f:selectItems value="#{row.bindings.Article.items}"
                                   id="si4"/>
                  </af:selectOneChoice>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.CreationDate.name}"
                           filterable="false" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.CreationDate.label}"
                           id="c9" visible="false">
                  <f:facet name="filter">
                    <af:inputDate value="#{vs.filterCriteria.CreationDate}"
                                  id="id13"/>
                  </f:facet>
                  <af:inputDate value="#{row.bindings.CreationDate.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.CreationDate.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.CreationDate.mandatory}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.CreationDate.tooltip}"
                                id="id15">
                    <f:validator binding="#{row.bindings.CreationDate.validator}"/>
                    <af:convertDateTime pattern="#{bindings.VO_SalesPlanningLines2.hints.CreationDate.format}"/>
                  </af:inputDate>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.LastUpdateDate.name}"
                           filterable="false" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.LastUpdateDate.label}"
                           id="c4" visible="false">
                  <f:facet name="filter">
                    <af:inputDate value="#{vs.filterCriteria.LastUpdateDate}"
                                  id="id14"/>
                  </f:facet>
                  <af:inputDate value="#{row.bindings.LastUpdateDate.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.LastUpdateDate.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.LastUpdateDate.mandatory}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.LastUpdateDate.tooltip}"
                                id="id16">
                    <f:validator binding="#{row.bindings.LastUpdateDate.validator}"/>
                    <af:convertDateTime pattern="#{bindings.VO_SalesPlanningLines2.hints.LastUpdateDate.format}"/>
                  </af:inputDate>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.name}"
                           filterable="false" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.label}"
                           id="c7" visible="false">
                  <af:inputText value="#{row.bindings.LastUpdatedBy.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.tooltip}"
                                id="it27">
                    <f:validator binding="#{row.bindings.LastUpdatedBy.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.Quantity.name}"
                           filterable="false" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.Quantity.label}"
                           id="c6">
                  <af:inputText value="#{row.bindings.Quantity.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.Quantity.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.Quantity.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.Quantity.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.Quantity.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.Quantity.tooltip}"
                                id="it31">
                    <f:validator binding="#{row.bindings.Quantity.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines2.hints.Quantity.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.Remarks.name}"
                           filterable="false" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.Remarks.label}"
                           id="c2" rowHeader="false" width="400">
                  <af:inputText value="#{row.bindings.Remarks.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.Remarks.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.Remarks.mandatory}"
                                columns="100"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.Remarks.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.Remarks.tooltip}"
                                id="it30">
                    <f:validator binding="#{row.bindings.Remarks.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.name}"
                           filterable="false" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.label}"
                           id="c3" visible="false">
                  <af:inputText value="#{row.bindings.SpHeaderId.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.tooltip}"
                                id="it33">
                    <f:validator binding="#{row.bindings.SpHeaderId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.name}"
                           filterable="false" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.label}"
                           id="c11" visible="false">
                  <af:inputText value="#{row.bindings.SpLineId.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.tooltip}"
                                id="it26">
                    <f:validator binding="#{row.bindings.SpLineId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.Uom.name}"
                           filterable="false" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.Uom.label}"
                           id="c1" visible="false">
                  <af:inputText value="#{row.bindings.Uom.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.Uom.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.Uom.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.Uom.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.Uom.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.Uom.tooltip}"
                                id="it29">
                    <f:validator binding="#{row.bindings.Uom.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.name}"
                           filterable="false" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.label}"
                           id="c8" visible="false">
                  <af:inputText value="#{row.bindings.VersionNumber.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.tooltip}"
                                id="it28">
                    <f:validator binding="#{row.bindings.VersionNumber.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.format}"/>
                  </af:inputText>
                </af:column>
              </af:table>
            </af:panelBox>
            
          </af:panelGroupLayout>
        </f:facet>
        <f:facet name="search">
          <af:panelGroupLayout layout="vertical" id="pgl3"
                               inlineStyle="margin-top:8px">
            <af:panelGroupLayout layout="vertical" id="pgl4" halign="center"
                                 inlineStyle="padding:8px;">
              <af:panelHeader text="Search" id="ph1"
                              inlineStyle="border:1px #e5e5e5 solid;"
                              contentStyle="color:green">
                <af:query id="qryId1" headerText=" " disclosed="true"
                          value="#{bindings.VOSalesPlanningHeaderCriteriaQuery.queryDescriptor}"
                          model="#{bindings.VOSalesPlanningHeaderCriteriaQuery.queryModel}"
                          queryListener="#{bindings.VOSalesPlanningHeaderCriteriaQuery.processQuery}"
                          queryOperationListener="#{bindings.VOSalesPlanningHeaderCriteriaQuery.processQueryOperation}"
                          displayMode="simple" fieldWidth="40"/>
                <af:panelGroupLayout id="pgl7" layout="vertical"
                                     halign="center">
                  <af:commandButton text="Search" id="cb8"
                
                                    inlineStyle="width:60px; text-align:center;"
                                    icon="/images/search_icon.png"
                                    partialSubmit="true"
                                    action="#{HandlerBean.newSalesContractSearchAction}">
                    <af:clientListener method="enforcePreventUserInput"
                                       type="action"/>
                  </af:commandButton>
                </af:panelGroupLayout>
              </af:panelHeader>
              <af:spacer width="10" height="20" id="s22"/>
              <af:panelGroupLayout id="pgl10"
                                   inlineStyle="border:1px #e5e5e5 solid;"
                                   layout="vertical">
                <af:panelGroupLayout id="pgl6" layout="horizontal">
                  <af:commandButton actionListener="#{bindings.First.execute}"
                                    text="First"
                                    disabled="#{!bindings.First.enabled}"
                                    partialSubmit="true" id="commandButton4"
                                    inlineStyle="width:65px; text-align:center;"
                                    icon="/images/f.png"/>
                  <af:spacer width="10" height="10" id="s1"/>
                  <af:commandButton actionListener="#{bindings.Last.execute}"
                                    text="Last"
                                    disabled="#{!bindings.Last.enabled}"
                                    partialSubmit="true" id="commandButton5"
                                    inlineStyle="width:65px; text-align:center;"
                                    icon="/images/l.png"
                                    iconPosition="trailing"/>
                </af:panelGroupLayout>
                <af:spacer width="10" height="6" id="s4"/>
                <af:panelGroupLayout id="pgl5" layout="horizontal">
                  <af:commandButton actionListener="#{bindings.Previous.execute}"
                                    text="Previous"
                                    disabled="#{!bindings.Previous.enabled}"
                                    partialSubmit="true" id="commandButton1"
                                    inlineStyle="width:65px; text-align:center;"
                                    icon="/images/p.png"/>
                  <af:spacer width="10" height="10" id="s3"/>
                  <af:commandButton actionListener="#{bindings.Next.execute}"
                                    text="Next"
                                    disabled="#{!bindings.Next.enabled}"
                                    partialSubmit="true" id="commandButton2"
                                    inlineStyle="width:65px; text-align:center;"
                                    icon="/images/n.png"
                                    iconPosition="trailing"/>
                </af:panelGroupLayout>
                <af:spacer width="10" height="6" id="s5"/>
                <af:panelGroupLayout id="pgl8" layout="horizontal">
                  <af:commandButton text="New"
                                    disabled="#{!bindings.CreateInsert.enabled}"
                                    id="commandButton3"
                                    inlineStyle="width:65px; text-align:center;"
                                    icon="/images/new_icon.png"
                                    action="#{HandlerBean.newSalesContractNewAction}"/>
                  <af:spacer width="10" height="10" id="spacer2"/>
                  <af:commandButton text="Save" id="commandButton6"
                                    inlineStyle="width:65px; text-align:center;"
                                    iconPosition="leading"
                                    icon="/images/save.png"
                                    partialSubmit="true"
                                    action="#{HandlerBean.newSalesContractSaveAction}">
                                    <af:clientListener method="enforcePreventUserInput"
                                       type="action"/>
                                    </af:commandButton>
                                    
                </af:panelGroupLayout>
                <af:spacer width="10" height="6" id="spacer1"/>
                <af:panelGroupLayout id="panelGroupLayout1" layout="vertical"
                                     halign="center">
                  <af:commandButton text="Cancel" disabled="false"
                                    immediate="true" id="cb9"
                                    inlineStyle="width:65px; text-align:center;"
                                    icon="/images/cancel.png"
                                    action="#{HandlerBean.newSalesContractCancelAction}">
                    <af:resetActionListener/>
                  </af:commandButton>
                </af:panelGroupLayout>
              </af:panelGroupLayout>
            </af:panelGroupLayout>
          </af:panelGroupLayout>
        </f:facet>
      </af:pageTemplate>
      <af:popup id="p1" contentDelivery="immediate">
              <af:dialog id="d2" type="none"
                         title="Please wait. . . . . . "
                         closeIconVisible="false">
                <af:panelGroupLayout id="pgl44" layout="vertical"
                                     halign="center">
                  <af:outputText id="outputtext2"
                                 inlineStyle="color:Red; font-weight:bold; font-size:medium;"/>
                  <af:image source="/images/anim_pleaseWait.gif" id="i1"/>
                </af:panelGroupLayout>
              </af:dialog>
            </af:popup>
    </af:form>
    <af:resource type="javascript">
      function enforcePreventUserInput(evt) {
          var popup = AdfPage.PAGE.findComponentByAbsoluteId('p1');
          if (popup != null) {
              AdfPage.PAGE.addBusyStateListener(popup, handleBusyState);
              evt.preventUserInput();
          }
      }

      function handleBusyState(evt) {
          var popup = AdfPage.PAGE.findComponentByAbsoluteId('p1');
          if (popup != null) {
              if (evt.isBusy()) {
                  popup.show();
              }
              else if (popup.isPopupVisible()) {
                  popup.hide();
                  AdfPage.PAGE.removeBusyStateListener(popup, handleBusyState);
              }
          }
      }
    </af:resource>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:preferred-managed-bean-name:HandlerBean--%>