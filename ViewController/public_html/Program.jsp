<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://myfaces.apache.org/trinidad" prefix="tr"%>
<f:view>
  <af:document id="d1">
    <af:messages id="m1"/>
    <af:form id="f1">
      <af:pageTemplate viewId="/AppTemplate.jspx" id="pt1">
        <f:facet name="content">
          <af:panelGroupLayout id="pgl1" layout="scroll" halign="left"
                               inlineStyle="padding:10px;">
            <af:panelGroupLayout id="pgl7">
              <af:panelBox text="Programs" id="pb1" background="medium">
                <f:facet name="toolbar"/>
                <af:panelGroupLayout id="pgl5" layout="horizontal"
                                     halign="left">
                  <af:panelGroupLayout id="pgl11">
                    <af:panelFormLayout id="pfl1"
                                        inlineStyle="background-color:white; height:150px; margin-top:28px; background-image:url(images/back.png);border:1px #d8d8d8 solid;margin-right:10px;">
                      <af:inputText value="#{bindings.CustAcctId.inputValue}"
                                    label="#{bindings.CustAcctId.hints.label}"
                                    required="#{bindings.CustAcctId.hints.mandatory}"
                                    columns="#{bindings.CustAcctId.hints.displayWidth}"
                                    maximumLength="#{bindings.CustAcctId.hints.precision}"
                                    shortDesc="#{bindings.CustAcctId.hints.tooltip}"
                                    partialTriggers="customerNameId" id="it3"
                                    visible="false">
                        <f:validator binding="#{bindings.CustAcctId.validator}"/>
                        <af:convertNumber groupingUsed="false"
                                          pattern="#{bindings.CustAcctId.format}"/>
                      </af:inputText>
                      <af:inputText value="#{bindings.ProgramId.inputValue}"
                                    label="#{bindings.ProgramId.hints.label}"
                                    required="#{bindings.ProgramId.hints.mandatory}"
                                    columns="#{bindings.ProgramId.hints.displayWidth}"
                                    maximumLength="#{bindings.ProgramId.hints.precision}"
                                    shortDesc="#{bindings.ProgramId.hints.tooltip}"
                                    id="it2" visible="false"
                                    binding="#{HandlerBean.program_id}">
                        <f:validator binding="#{bindings.ProgramId.validator}"/>
                        <af:convertNumber groupingUsed="false"
                                          pattern="#{bindings.ProgramId.format}"/>
                      </af:inputText>
                      <af:inputText value="#{bindings.ProgramManager.inputValue}"
                                    label="#{bindings.ProgramManager.hints.label}"
                                    required="#{bindings.ProgramManager.hints.mandatory}"
                                    columns="#{bindings.ProgramManager.hints.displayWidth}"
                                    maximumLength="#{bindings.ProgramManager.hints.precision}"
                                    shortDesc="#{bindings.ProgramManager.hints.tooltip}"
                                    id="it8" visible="false">
                        <f:validator binding="#{bindings.ProgramManager.validator}"/>
                      </af:inputText>
                      <af:inputText value="#{bindings.PrgManager.inputValue}"
                                    label="#{bindings.PrgManager.hints.label}"
                                    required="#{bindings.PrgManager.hints.mandatory}"
                                    columns="#{bindings.PrgManager.hints.displayWidth}"
                                    maximumLength="#{bindings.PrgManager.hints.precision}"
                                    shortDesc="#{bindings.PrgManager.hints.tooltip}"
                                    id="it7" visible="false">
                        <f:validator binding="#{bindings.PrgManager.validator}"/>
                      </af:inputText>
                      <af:inputText value="#{bindings.ProgramName.inputValue}"
                                    label="#{bindings.ProgramName.hints.label}"
                                    required="true"
                                    columns="25"
                                    maximumLength="#{bindings.ProgramName.hints.precision}"
                                    shortDesc="#{bindings.ProgramName.hints.tooltip}"
                                    id="it1">
                        <f:validator binding="#{bindings.ProgramName.validator}"/>
                      </af:inputText>
                      <af:selectOneChoice value="#{bindings.ProgramPhase.inputValue}"
                                          label="#{bindings.ProgramPhase.label}"
                                          required="#{bindings.ProgramPhase.hints.mandatory}"
                                          shortDesc="#{bindings.ProgramPhase.hints.tooltip}"
                                          id="soc1">
                        <f:selectItems value="#{bindings.ProgramPhase.items}"
                                       id="si1"/>
                      </af:selectOneChoice>
                      <af:inputText value="#{bindings.LastUpdatedBy.inputValue}"
                                    label="#{bindings.LastUpdatedBy.hints.label}"
                                    required="#{bindings.LastUpdatedBy.hints.mandatory}"
                                    columns="#{bindings.LastUpdatedBy.hints.displayWidth}"
                                    maximumLength="#{bindings.LastUpdatedBy.hints.precision}"
                                    shortDesc="#{bindings.LastUpdatedBy.hints.tooltip}"
                                    id="it6" visible="false">
                        <f:validator binding="#{bindings.LastUpdatedBy.validator}"/>
                        <af:convertNumber groupingUsed="false"
                                          pattern="#{bindings.LastUpdatedBy.format}"/>
                      </af:inputText>
                      <af:inputText value="#{bindings.CreatedBy.inputValue}"
                                    label="#{bindings.CreatedBy.hints.label}"
                                    required="#{bindings.CreatedBy.hints.mandatory}"
                                    columns="#{bindings.CreatedBy.hints.displayWidth}"
                                    maximumLength="#{bindings.CreatedBy.hints.precision}"
                                    shortDesc="#{bindings.CreatedBy.hints.tooltip}"
                                    id="it4" visible="false">
                        <f:validator binding="#{bindings.CreatedBy.validator}"/>
                        <af:convertNumber groupingUsed="false"
                                          pattern="#{bindings.CreatedBy.format}"/>
                      </af:inputText>
                      <af:inputListOfValues id="customerNameId"
                                            popupTitle="Search and Select: #{bindings.CustomerName.hints.label}"
                                            value="#{bindings.CustomerName.inputValue}"
                                            label="#{bindings.CustomerName.hints.label}"
                                            model="#{bindings.CustomerName.listOfValuesModel}"
                                            required="#{bindings.CustomerName.hints.mandatory}"
                                            readOnly="#{bindings.CustomerName.inputValue != null}"
                                            columns="#{bindings.CustomerName.hints.displayWidth}"
                                            shortDesc="#{bindings.CustomerName.hints.tooltip}">
                        <f:validator binding="#{bindings.CustomerName.validator}"/>
                      </af:inputListOfValues>
                      <af:inputText value="#{bindings.PhaseName.inputValue}"
                                    label="#{bindings.PhaseName.hints.label}"
                                    required="#{bindings.PhaseName.hints.mandatory}"
                                    columns="#{bindings.PhaseName.hints.displayWidth}"
                                    maximumLength="#{bindings.PhaseName.hints.precision}"
                                    shortDesc="#{bindings.PhaseName.hints.tooltip}"
                                    id="it5" visible="false">
                        <f:validator binding="#{bindings.PhaseName.validator}"/>
                      </af:inputText>
                      <f:facet name="footer">
                        <af:panelGroupLayout layout="vertical" id="pgl2"
                                             inlineStyle="margin-top:15px;">
                          <af:panelGroupLayout layout="horizontal" id="pgl3">
                            <af:commandButton actionListener="#{bindings.First.execute}"
                                              text="First"
                                              disabled="#{!bindings.First.enabled}"
                                              partialSubmit="true" id="cb2"
                                              icon="/images/f.png"
                                              inlineStyle="width:65px; text-align:center;"/>
                            <af:commandButton actionListener="#{bindings.Previous.execute}"
                                              text="Previous"
                                              disabled="#{!bindings.Previous.enabled}"
                                              partialSubmit="true" id="cb5"
                                              icon="/images/p.png"
                                              inlineStyle="width:65px; text-align:center;"/>
                            <af:commandButton actionListener="#{bindings.Next.execute}"
                                              text="Next"
                                              disabled="#{!bindings.Next.enabled}"
                                              partialSubmit="true" id="cb4"
                                              icon="/images/n.png"
                                              inlineStyle="width:65px; text-align:center;"/>
                            <af:commandButton actionListener="#{bindings.Last.execute}"
                                              text="Last"
                                              disabled="#{!bindings.Last.enabled}"
                                              partialSubmit="true" id="cb1"
                                              icon="/images/l.png"
                                              inlineStyle="width:65px; text-align:center;"/>
                          </af:panelGroupLayout>
                          <af:panelGroupLayout id="pgl6" layout="horizontal">
                            <af:commandButton actionListener="#{bindings.Create.execute}"
                                              text="New"
                                              disabled="#{!bindings.Create.enabled}"
                                              id="cb6"
                                              icon="/images/new_icon.png"
                                              inlineStyle="width:65px; text-align:center;"
                                              visible="false"/>
                            <af:commandButton actionListener="#{bindings.CreateInsert3.execute}"
                                              text="New"
                                              disabled="#{!bindings.CreateInsert3.enabled}"
                                              id="cb12"
                                              icon="/images/new_icon.png"
                                              inlineStyle="width:65px; text-align:center;"/>
                            <af:commandButton text="Save" disabled="false"
                                              id="cb3" icon="/images/save.png"
                                              inlineStyle="width:65px; text-align:center;"
                                              action="#{HandlerBean.save_budget_lines}"/>
                            <af:commandButton actionListener="#{bindings.Rollback.execute}"
                                              text="Cancel" disabled="false"
                                              immediate="true" id="cb10"
                                              icon="/images/cancel.png"
                                              inlineStyle="width:65px; text-align:center;">
                              <af:resetActionListener/>
                            </af:commandButton>
                          </af:panelGroupLayout>
                        </af:panelGroupLayout>
                      </f:facet>
                    </af:panelFormLayout>
                  </af:panelGroupLayout>
                  <af:panelGroupLayout id="pgl4" layout="horizontal"
                                       inlineStyle="margin-top:10px;">
                    <af:panelGroupLayout id="pgl8">
                      <af:commandButton actionListener="#{bindings.CreateInsert.execute}"
                                        text="New Article"
                                        disabled="#{!bindings.CreateInsert.enabled}"
                                        id="cb8"
                                        inlineStyle="font-weight:bold;width:95px; text-align:center;"
                                        icon="/images/new_icon.png"/>
                      <af:table value="#{bindings.VO_XXSppArticle2.collectionModel}"
                                var="row"
                                rows="#{bindings.VO_XXSppArticle2.rangeSize}"
                                emptyText="#{bindings.VO_XXSppArticle2.viewable ? 'No data to display.' : 'Access Denied.'}"
                                fetchSize="#{bindings.VO_XXSppArticle2.rangeSize}"
                                rowBandingInterval="0" id="t2"
                                partialTriggers="::cb8"
                                inlineStyle="height:150px; background-image:url(images/back.png);" width="210"
                                binding="#{HandlerBean.article_table}">
                        <af:column sortProperty="#{bindings.VO_XXSppArticle2.hints.CreatedBy.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppArticle2.hints.CreatedBy.label}"
                                   id="c13" visible="false">
                          <af:inputText value="#{row.bindings.CreatedBy.inputValue}"
                                        label="#{bindings.VO_XXSppArticle2.hints.CreatedBy.label}"
                                        required="#{bindings.VO_XXSppArticle2.hints.CreatedBy.mandatory}"
                                        columns="#{bindings.VO_XXSppArticle2.hints.CreatedBy.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppArticle2.hints.CreatedBy.precision}"
                                        shortDesc="#{bindings.VO_XXSppArticle2.hints.CreatedBy.tooltip}"
                                        id="it17">
                            <f:validator binding="#{row.bindings.CreatedBy.validator}"/>
                            <af:convertNumber groupingUsed="false"
                                              pattern="#{bindings.VO_XXSppArticle2.hints.CreatedBy.format}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppArticle2.hints.CreationDate.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppArticle2.hints.CreationDate.label}"
                                   id="c10" visible="false">
                          <af:inputDate value="#{row.bindings.CreationDate.inputValue}"
                                        label="#{bindings.VO_XXSppArticle2.hints.CreationDate.label}"
                                        required="#{bindings.VO_XXSppArticle2.hints.CreationDate.mandatory}"
                                        shortDesc="#{bindings.VO_XXSppArticle2.hints.CreationDate.tooltip}"
                                        id="id3">
                            <f:validator binding="#{row.bindings.CreationDate.validator}"/>
                            <af:convertDateTime pattern="#{bindings.VO_XXSppArticle2.hints.CreationDate.format}"/>
                          </af:inputDate>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppArticle2.hints.LastUpdateDate.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppArticle2.hints.LastUpdateDate.label}"
                                   id="c14" visible="false">
                          <af:inputDate value="#{row.bindings.LastUpdateDate.inputValue}"
                                        label="#{bindings.VO_XXSppArticle2.hints.LastUpdateDate.label}"
                                        required="#{bindings.VO_XXSppArticle2.hints.LastUpdateDate.mandatory}"
                                        shortDesc="#{bindings.VO_XXSppArticle2.hints.LastUpdateDate.tooltip}"
                                        id="id4">
                            <f:validator binding="#{row.bindings.LastUpdateDate.validator}"/>
                            <af:convertDateTime pattern="#{bindings.VO_XXSppArticle2.hints.LastUpdateDate.format}"/>
                          </af:inputDate>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppArticle2.hints.LastUpdatedBy.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppArticle2.hints.LastUpdatedBy.label}"
                                   id="c11" visible="false">
                          <af:inputText value="#{row.bindings.LastUpdatedBy.inputValue}"
                                        label="#{bindings.VO_XXSppArticle2.hints.LastUpdatedBy.label}"
                                        required="#{bindings.VO_XXSppArticle2.hints.LastUpdatedBy.mandatory}"
                                        columns="#{bindings.VO_XXSppArticle2.hints.LastUpdatedBy.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppArticle2.hints.LastUpdatedBy.precision}"
                                        shortDesc="#{bindings.VO_XXSppArticle2.hints.LastUpdatedBy.tooltip}"
                                        id="it14">
                            <f:validator binding="#{row.bindings.LastUpdatedBy.validator}"/>
                            <af:convertNumber groupingUsed="false"
                                              pattern="#{bindings.VO_XXSppArticle2.hints.LastUpdatedBy.format}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppArticle2.hints.ProgramId.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppArticle2.hints.ProgramId.label}"
                                   id="c15" visible="false">
                          <af:inputText value="#{row.bindings.ProgramId.inputValue}"
                                        label="#{bindings.VO_XXSppArticle2.hints.ProgramId.label}"
                                        required="#{bindings.VO_XXSppArticle2.hints.ProgramId.mandatory}"
                                        columns="#{bindings.VO_XXSppArticle2.hints.ProgramId.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppArticle2.hints.ProgramId.precision}"
                                        shortDesc="#{bindings.VO_XXSppArticle2.hints.ProgramId.tooltip}"
                                        id="it16">
                            <f:validator binding="#{row.bindings.ProgramId.validator}"/>
                            <af:convertNumber groupingUsed="false"
                                              pattern="#{bindings.VO_XXSppArticle2.hints.ProgramId.format}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppArticle2.hints.VersionNumber.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppArticle2.hints.VersionNumber.label}"
                                   id="c16" visible="false">
                          <af:inputText value="#{row.bindings.VersionNumber.inputValue}"
                                        label="#{bindings.VO_XXSppArticle2.hints.VersionNumber.label}"
                                        required="#{bindings.VO_XXSppArticle2.hints.VersionNumber.mandatory}"
                                        columns="#{bindings.VO_XXSppArticle2.hints.VersionNumber.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppArticle2.hints.VersionNumber.precision}"
                                        shortDesc="#{bindings.VO_XXSppArticle2.hints.VersionNumber.tooltip}"
                                        id="it18">
                            <f:validator binding="#{row.bindings.VersionNumber.validator}"/>
                            <af:convertNumber groupingUsed="false"
                                              pattern="#{bindings.VO_XXSppArticle2.hints.VersionNumber.format}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppArticle2.hints.ArticleDesc.name}"
                                   sortable="false"
                                   headerText="Article                                                                                                          " id="c9"
                                   width="200">
                          <af:selectOneChoice value="#{row.bindings.ArticleDesc.inputValue}"
                                              label="#{row.bindings.ArticleDesc.label}"
                                              required="#{bindings.VO_XXSppArticle2.hints.ArticleDesc.mandatory}"
                                              shortDesc="#{bindings.VO_XXSppArticle2.hints.ArticleDesc.tooltip}"
                                              id="soc2" autoSubmit="false">
                            <f:selectItems value="#{row.bindings.ArticleDesc.items}"
                                           id="si2"/>
                          </af:selectOneChoice>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppArticle2.hints.ArticleId.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppArticle2.hints.ArticleId.label}"
                                   id="c12" visible="false">
                          <af:inputText value="#{row.bindings.ArticleId.inputValue}"
                                        label="#{bindings.VO_XXSppArticle2.hints.ArticleId.label}"
                                        required="false"
                                        columns="#{bindings.VO_XXSppArticle2.hints.ArticleId.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppArticle2.hints.ArticleId.precision}"
                                        shortDesc="#{bindings.VO_XXSppArticle2.hints.ArticleId.tooltip}"
                                        id="it15" partialTriggers="soc2">
                            <f:validator binding="#{row.bindings.ArticleId.validator}"/>
                          </af:inputText>
                        </af:column>
                      </af:table>
                    </af:panelGroupLayout>
                    <af:panelGroupLayout id="pgl9">
                      <af:commandButton actionListener="#{bindings.CreateInsert1.execute}"
                                        text="New Size"
                                        disabled="#{!bindings.CreateInsert1.enabled}"
                                        id="cb7"
                                        inlineStyle="font-weight:bold;width:95px; text-align:center;"
                                        icon="/images/new_icon.png"/>
                      <af:table value="#{bindings.VO_XXSppSize2.collectionModel}"
                                var="row"
                                rows="#{bindings.VO_XXSppSize2.rangeSize}"
                                emptyText="#{bindings.VO_XXSppSize2.viewable ? 'No data to display.' : 'Access Denied.'}"
                                fetchSize="#{bindings.VO_XXSppSize2.rangeSize}"
                                rowBandingInterval="0" id="t1"
                                partialTriggers="::cb7" width="210"
                                inlineStyle="height:150px; background-image:url(images/back.png);"
                                binding="#{HandlerBean.size_table}">
                        <af:column sortProperty="#{bindings.VO_XXSppSize2.hints.CreatedBy.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppSize2.hints.CreatedBy.label}"
                                   id="c1" visible="false">
                          <af:inputText value="#{row.bindings.CreatedBy.inputValue}"
                                        label="#{bindings.VO_XXSppSize2.hints.CreatedBy.label}"
                                        required="#{bindings.VO_XXSppSize2.hints.CreatedBy.mandatory}"
                                        columns="#{bindings.VO_XXSppSize2.hints.CreatedBy.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppSize2.hints.CreatedBy.precision}"
                                        shortDesc="#{bindings.VO_XXSppSize2.hints.CreatedBy.tooltip}"
                                        id="it11">
                            <f:validator binding="#{row.bindings.CreatedBy.validator}"/>
                            <af:convertNumber groupingUsed="false"
                                              pattern="#{bindings.VO_XXSppSize2.hints.CreatedBy.format}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppSize2.hints.CreationDate.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppSize2.hints.CreationDate.label}"
                                   id="c6" visible="false">
                          <af:inputDate value="#{row.bindings.CreationDate.inputValue}"
                                        label="#{bindings.VO_XXSppSize2.hints.CreationDate.label}"
                                        required="#{bindings.VO_XXSppSize2.hints.CreationDate.mandatory}"
                                        shortDesc="#{bindings.VO_XXSppSize2.hints.CreationDate.tooltip}"
                                        id="id2">
                            <f:validator binding="#{row.bindings.CreationDate.validator}"/>
                            <af:convertDateTime pattern="#{bindings.VO_XXSppSize2.hints.CreationDate.format}"/>
                          </af:inputDate>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppSize2.hints.LastUpdateDate.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppSize2.hints.LastUpdateDate.label}"
                                   id="c2" visible="false">
                          <af:inputDate value="#{row.bindings.LastUpdateDate.inputValue}"
                                        label="#{bindings.VO_XXSppSize2.hints.LastUpdateDate.label}"
                                        required="#{bindings.VO_XXSppSize2.hints.LastUpdateDate.mandatory}"
                                        shortDesc="#{bindings.VO_XXSppSize2.hints.LastUpdateDate.tooltip}"
                                        id="id1">
                            <f:validator binding="#{row.bindings.LastUpdateDate.validator}"/>
                            <af:convertDateTime pattern="#{bindings.VO_XXSppSize2.hints.LastUpdateDate.format}"/>
                          </af:inputDate>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppSize2.hints.LastUpdatedBy.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppSize2.hints.LastUpdatedBy.label}"
                                   id="c3" visible="false">
                          <af:inputText value="#{row.bindings.LastUpdatedBy.inputValue}"
                                        label="#{bindings.VO_XXSppSize2.hints.LastUpdatedBy.label}"
                                        required="#{bindings.VO_XXSppSize2.hints.LastUpdatedBy.mandatory}"
                                        columns="#{bindings.VO_XXSppSize2.hints.LastUpdatedBy.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppSize2.hints.LastUpdatedBy.precision}"
                                        shortDesc="#{bindings.VO_XXSppSize2.hints.LastUpdatedBy.tooltip}"
                                        id="it12">
                            <f:validator binding="#{row.bindings.LastUpdatedBy.validator}"/>
                            <af:convertNumber groupingUsed="false"
                                              pattern="#{bindings.VO_XXSppSize2.hints.LastUpdatedBy.format}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppSize2.hints.ProgramId.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppSize2.hints.ProgramId.label}"
                                   id="c5" visible="false">
                          <af:inputText value="#{row.bindings.ProgramId.inputValue}"
                                        label="#{bindings.VO_XXSppSize2.hints.ProgramId.label}"
                                        required="#{bindings.VO_XXSppSize2.hints.ProgramId.mandatory}"
                                        columns="#{bindings.VO_XXSppSize2.hints.ProgramId.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppSize2.hints.ProgramId.precision}"
                                        shortDesc="#{bindings.VO_XXSppSize2.hints.ProgramId.tooltip}"
                                        id="it10">
                            <f:validator binding="#{row.bindings.ProgramId.validator}"/>
                            <af:convertNumber groupingUsed="false"
                                              pattern="#{bindings.VO_XXSppSize2.hints.ProgramId.format}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppSize2.hints.SizeId.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppSize2.hints.SizeId.label}"
                                   id="c8" visible="false">
                          <af:inputText value="#{row.bindings.SizeId.inputValue}"
                                        label="#{bindings.VO_XXSppSize2.hints.SizeId.label}"
                                        required="false"
                                        columns="#{bindings.VO_XXSppSize2.hints.SizeId.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppSize2.hints.SizeId.precision}"
                                        shortDesc="#{bindings.VO_XXSppSize2.hints.SizeId.tooltip}"
                                        id="it13" partialTriggers="sizeDescId">
                            <f:validator binding="#{row.bindings.SizeId.validator}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppSize2.hints.VersionNumber.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppSize2.hints.VersionNumber.label}"
                                   id="c4" visible="false">
                          <af:inputText value="#{row.bindings.VersionNumber.inputValue}"
                                        label="#{bindings.VO_XXSppSize2.hints.VersionNumber.label}"
                                        required="#{bindings.VO_XXSppSize2.hints.VersionNumber.mandatory}"
                                        columns="#{bindings.VO_XXSppSize2.hints.VersionNumber.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppSize2.hints.VersionNumber.precision}"
                                        shortDesc="#{bindings.VO_XXSppSize2.hints.VersionNumber.tooltip}"
                                        id="it9">
                            <f:validator binding="#{row.bindings.VersionNumber.validator}"/>
                            <af:convertNumber groupingUsed="false"
                                              pattern="#{bindings.VO_XXSppSize2.hints.VersionNumber.format}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppSize2.hints.SizeDesc.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppSize2.hints.SizeDesc.label}"
                                   id="c7" width="200">
                          <af:inputListOfValues id="sizeDescId"
                                                popupTitle="Search and Select: #{bindings.VO_XXSppSize2.hints.SizeDesc.label}"
                                                value="#{row.bindings.SizeDesc.inputValue}"
                                                model="#{row.bindings.SizeDesc.listOfValuesModel}"
                                                required="#{bindings.VO_XXSppSize2.hints.SizeDesc.mandatory}"
                                                columns="#{bindings.VO_XXSppSize2.hints.SizeDesc.displayWidth}"
                                                shortDesc="#{bindings.VO_XXSppSize2.hints.SizeDesc.tooltip}"
                                                autoSubmit="false">
                            <f:validator binding="#{row.bindings.SizeDesc.validator}"/>
                          </af:inputListOfValues>
                        </af:column>
                      </af:table>
                    </af:panelGroupLayout>
                    <af:panelGroupLayout id="pgl10">
                      <af:commandButton actionListener="#{bindings.CreateInsert2.execute}"
                                        text="New Color"
                                        disabled="#{!bindings.CreateInsert2.enabled}"
                                        id="cb9"
                                        inlineStyle="font-weight:bold;width:95px; text-align:center;"
                                        icon="/images/new_icon.png"/>
                      <af:table value="#{bindings.VO_XXSppColor2.collectionModel}"
                                var="row"
                                rows="#{bindings.VO_XXSppColor2.rangeSize}"
                                emptyText="#{bindings.VO_XXSppColor2.viewable ? 'No data to display.' : 'Access Denied.'}"
                                fetchSize="#{bindings.VO_XXSppColor2.rangeSize}"
                                rowBandingInterval="0" id="t3"
                                partialTriggers="::cb9" width="210"
                                inlineStyle="height:150px; background-image:url(images/back.png);"
                                binding="#{HandlerBean.color_table}">
                        <af:column sortProperty="#{bindings.VO_XXSppColor2.hints.ColorId.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppColor2.hints.ColorId.label}"
                                   id="c23" width="105" visible="false">
                          <af:inputText value="#{row.bindings.ColorId.inputValue}"
                                        label="#{bindings.VO_XXSppColor2.hints.ColorId.label}"
                                        required="false"
                                        columns="#{bindings.VO_XXSppColor2.hints.ColorId.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppColor2.hints.ColorId.precision}"
                                        shortDesc="#{bindings.VO_XXSppColor2.hints.ColorId.tooltip}"
                                        id="it23" partialTriggers="colorDescId">
                            <f:validator binding="#{row.bindings.ColorId.validator}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppColor2.hints.CreatedBy.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppColor2.hints.CreatedBy.label}"
                                   id="c24" width="105" visible="false">
                          <af:inputText value="#{row.bindings.CreatedBy.inputValue}"
                                        label="#{bindings.VO_XXSppColor2.hints.CreatedBy.label}"
                                        required="#{bindings.VO_XXSppColor2.hints.CreatedBy.mandatory}"
                                        columns="#{bindings.VO_XXSppColor2.hints.CreatedBy.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppColor2.hints.CreatedBy.precision}"
                                        shortDesc="#{bindings.VO_XXSppColor2.hints.CreatedBy.tooltip}"
                                        id="it21">
                            <f:validator binding="#{row.bindings.CreatedBy.validator}"/>
                            <af:convertNumber groupingUsed="false"
                                              pattern="#{bindings.VO_XXSppColor2.hints.CreatedBy.format}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppColor2.hints.CreationDate.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppColor2.hints.CreationDate.label}"
                                   id="c17" width="105" visible="false">
                          <af:inputDate value="#{row.bindings.CreationDate.inputValue}"
                                        label="#{bindings.VO_XXSppColor2.hints.CreationDate.label}"
                                        required="#{bindings.VO_XXSppColor2.hints.CreationDate.mandatory}"
                                        shortDesc="#{bindings.VO_XXSppColor2.hints.CreationDate.tooltip}"
                                        id="id5">
                            <f:validator binding="#{row.bindings.CreationDate.validator}"/>
                            <af:convertDateTime pattern="#{bindings.VO_XXSppColor2.hints.CreationDate.format}"/>
                          </af:inputDate>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppColor2.hints.LastUpdateDate.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppColor2.hints.LastUpdateDate.label}"
                                   id="c19" width="105" visible="false">
                          <af:inputDate value="#{row.bindings.LastUpdateDate.inputValue}"
                                        label="#{bindings.VO_XXSppColor2.hints.LastUpdateDate.label}"
                                        required="#{bindings.VO_XXSppColor2.hints.LastUpdateDate.mandatory}"
                                        shortDesc="#{bindings.VO_XXSppColor2.hints.LastUpdateDate.tooltip}"
                                        id="id6">
                            <f:validator binding="#{row.bindings.LastUpdateDate.validator}"/>
                            <af:convertDateTime pattern="#{bindings.VO_XXSppColor2.hints.LastUpdateDate.format}"/>
                          </af:inputDate>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppColor2.hints.LastUpdatedBy.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppColor2.hints.LastUpdatedBy.label}"
                                   id="c22" width="104" visible="false">
                          <af:inputText value="#{row.bindings.LastUpdatedBy.inputValue}"
                                        label="#{bindings.VO_XXSppColor2.hints.LastUpdatedBy.label}"
                                        required="#{bindings.VO_XXSppColor2.hints.LastUpdatedBy.mandatory}"
                                        columns="#{bindings.VO_XXSppColor2.hints.LastUpdatedBy.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppColor2.hints.LastUpdatedBy.precision}"
                                        shortDesc="#{bindings.VO_XXSppColor2.hints.LastUpdatedBy.tooltip}"
                                        id="it22">
                            <f:validator binding="#{row.bindings.LastUpdatedBy.validator}"/>
                            <af:convertNumber groupingUsed="false"
                                              pattern="#{bindings.VO_XXSppColor2.hints.LastUpdatedBy.format}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppColor2.hints.ProgramId.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppColor2.hints.ProgramId.label}"
                                   id="c21" width="106" visible="false">
                          <af:inputText value="#{row.bindings.ProgramId.inputValue}"
                                        label="#{bindings.VO_XXSppColor2.hints.ProgramId.label}"
                                        required="#{bindings.VO_XXSppColor2.hints.ProgramId.mandatory}"
                                        columns="#{bindings.VO_XXSppColor2.hints.ProgramId.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppColor2.hints.ProgramId.precision}"
                                        shortDesc="#{bindings.VO_XXSppColor2.hints.ProgramId.tooltip}"
                                        id="it19">
                            <f:validator binding="#{row.bindings.ProgramId.validator}"/>
                            <af:convertNumber groupingUsed="false"
                                              pattern="#{bindings.VO_XXSppColor2.hints.ProgramId.format}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppColor2.hints.VersionNumber.name}"
                                   sortable="false"
                                   headerText="#{bindings.VO_XXSppColor2.hints.VersionNumber.label}"
                                   id="c20" width="105" visible="false">
                          <af:inputText value="#{row.bindings.VersionNumber.inputValue}"
                                        label="#{bindings.VO_XXSppColor2.hints.VersionNumber.label}"
                                        required="#{bindings.VO_XXSppColor2.hints.VersionNumber.mandatory}"
                                        columns="#{bindings.VO_XXSppColor2.hints.VersionNumber.displayWidth}"
                                        maximumLength="#{bindings.VO_XXSppColor2.hints.VersionNumber.precision}"
                                        shortDesc="#{bindings.VO_XXSppColor2.hints.VersionNumber.tooltip}"
                                        id="it20">
                            <f:validator binding="#{row.bindings.VersionNumber.validator}"/>
                            <af:convertNumber groupingUsed="false"
                                              pattern="#{bindings.VO_XXSppColor2.hints.VersionNumber.format}"/>
                          </af:inputText>
                        </af:column>
                        <af:column sortProperty="#{bindings.VO_XXSppColor2.hints.ColorDesc.name}"
                                   sortable="false" headerText="Color" id="c18"
                                   width="200">
                          <af:inputListOfValues id="colorDescId"
                                                popupTitle="Search and Select: #{bindings.VO_XXSppColor2.hints.ColorDesc.label}"
                                                value="#{row.bindings.ColorDesc.inputValue}"
                                                model="#{row.bindings.ColorDesc.listOfValuesModel}"
                                                required="#{bindings.VO_XXSppColor2.hints.ColorDesc.mandatory}"
                                                columns="#{bindings.VO_XXSppColor2.hints.ColorDesc.displayWidth}"
                                                shortDesc="#{bindings.VO_XXSppColor2.hints.ColorDesc.tooltip}"
                                                autoSubmit="false">
                            <f:validator binding="#{row.bindings.ColorDesc.validator}"/>
                          </af:inputListOfValues>
                        </af:column>
                      </af:table>
                    </af:panelGroupLayout>
                  </af:panelGroupLayout>
                </af:panelGroupLayout>
              </af:panelBox>
              <af:panelBox text="View Programs" id="pb2" background="medium">
                <f:facet name="toolbar"/>
                <af:table value="#{bindings.VO_XXSalesPlanningProgram1.collectionModel}"
                          var="row"
                          rows="#{bindings.VO_XXSalesPlanningProgram1.rangeSize}"
                          emptyText="#{bindings.VO_XXSalesPlanningProgram1.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.VO_XXSalesPlanningProgram1.rangeSize}"
                          rowBandingInterval="0"
                          filterModel="#{bindings.VO_XXSalesPlanningProgram1Query.queryDescriptor}"
                          queryListener="#{bindings.VO_XXSalesPlanningProgram1Query.processQuery}"
                          filterVisible="true" varStatus="vs"
                          selectionListener="#{bindings.VO_XXSalesPlanningProgram1.collectionModel.makeCurrent}"
                          rowSelection="multiple" id="t4"
                          partialTriggers="::cb2 ::cb5 ::cb4 ::cb1 ::cb6 ::cb11 ::cb10 ::cb12"
                          width="100%"
                          inlineStyle="height:220px; background-image:url(images/back.png);">
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.label}"
                             id="c30" visible="false">
                    <af:inputText value="#{row.bindings.CustAcctId.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.label}"
                                  required="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.tooltip}"
                                  id="it31">
                      <f:validator binding="#{row.bindings.CustAcctId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.label}"
                             id="c31" visible="false">
                    <af:inputText value="#{row.bindings.ProgramId.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.label}"
                                  required="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.tooltip}"
                                  id="it30">
                      <f:validator binding="#{row.bindings.ProgramId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramManager.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramManager.label}"
                             id="c29" visible="false">
                    <af:inputText value="#{row.bindings.ProgramManager.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramManager.label}"
                                  required="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramManager.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramManager.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramManager.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramManager.tooltip}"
                                  id="it29">
                      <f:validator binding="#{row.bindings.ProgramManager.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.PrgManager.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.PrgManager.label}"
                             id="c25" visible="false">
                    <af:inputText value="#{row.bindings.PrgManager.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningProgram1.hints.PrgManager.label}"
                                  required="#{bindings.VO_XXSalesPlanningProgram1.hints.PrgManager.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningProgram1.hints.PrgManager.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.PrgManager.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.PrgManager.tooltip}"
                                  id="it27">
                      <f:validator binding="#{row.bindings.PrgManager.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.label}"
                             id="c28" filterFeatures="caseInsensitive">
                    <af:inputText value="#{row.bindings.ProgramName.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.label}"
                                  required="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.tooltip}"
                                  id="it25" readOnly="true">
                      <f:validator binding="#{row.bindings.ProgramName.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramPhase.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramPhase.label}"
                             id="c27" filterFeatures="caseInsensitive">
                    <af:selectOneChoice value="#{row.bindings.ProgramPhase.inputValue}"
                                        label="#{row.bindings.ProgramPhase.label}"
                                        required="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramPhase.mandatory}"
                                        shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramPhase.tooltip}"
                                        id="soc3" readOnly="true">
                      <f:selectItems value="#{row.bindings.ProgramPhase.items}"
                                     id="si3"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.LastUpdatedBy.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.LastUpdatedBy.label}"
                             id="c26" visible="false">
                    <af:inputText value="#{row.bindings.LastUpdatedBy.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningProgram1.hints.LastUpdatedBy.label}"
                                  required="#{bindings.VO_XXSalesPlanningProgram1.hints.LastUpdatedBy.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningProgram1.hints.LastUpdatedBy.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.LastUpdatedBy.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.LastUpdatedBy.tooltip}"
                                  id="it26">
                      <f:validator binding="#{row.bindings.LastUpdatedBy.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.VO_XXSalesPlanningProgram1.hints.LastUpdatedBy.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.CreatedBy.name}"
                             filterable="true" sortable="true"
                             inlineStyle='background-image:url("images/back.png");'
                             headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.CreatedBy.label}"
                             id="c33" visible="false">
                    <af:inputText value="#{row.bindings.CreatedBy.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningProgram1.hints.CreatedBy.label}"
                                  required="#{bindings.VO_XXSalesPlanningProgram1.hints.CreatedBy.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningProgram1.hints.CreatedBy.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.CreatedBy.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.CreatedBy.tooltip}"
                                  id="it28">
                      <f:validator binding="#{row.bindings.CreatedBy.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.VO_XXSalesPlanningProgram1.hints.CreatedBy.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.name}"
                             filterable="true" sortable="true"
                             filterFeatures="caseInsensitive"
                             headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.label}"
                             id="c34" width="300"
                             inlineStyle='background-image:url("images/back.png");'>
                    <af:inputListOfValues id="inputListOfValues1"
                                          popupTitle="Search and Select: #{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.label}"
                                          value="#{row.bindings.CustomerName.inputValue}"
                                          model="#{row.bindings.CustomerName.listOfValuesModel}"
                                          required="#{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.mandatory}"
                                          columns="#{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.displayWidth}"
                                          shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.tooltip}"
                                          readOnly="true">
                      <f:validator binding="#{row.bindings.CustomerName.validator}"/>
                    </af:inputListOfValues>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.PhaseName.name}"
                  inlineStyle='background-image:url("images/back.png");'
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.PhaseName.label}"
                             id="c32" visible="false">
                    <af:inputText value="#{row.bindings.PhaseName.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningProgram1.hints.PhaseName.label}"
                                  required="#{bindings.VO_XXSalesPlanningProgram1.hints.PhaseName.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningProgram1.hints.PhaseName.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.PhaseName.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.PhaseName.tooltip}"
                                  id="it24">
                      <f:validator binding="#{row.bindings.PhaseName.validator}"/>
                    </af:inputText>
                  </af:column>
                </af:table>
              </af:panelBox>
            </af:panelGroupLayout>
          </af:panelGroupLayout>
        </f:facet>
        <f:facet name="search"/>
      </af:pageTemplate>
    </af:form>
  </af:document>
</f:view>