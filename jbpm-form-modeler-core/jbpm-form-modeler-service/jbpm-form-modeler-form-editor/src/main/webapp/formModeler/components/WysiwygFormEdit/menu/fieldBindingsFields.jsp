<%--

    Copyright (C) 2012 JBoss Inc

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

          http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

--%>
<%@ page import="org.jbpm.formModeler.service.bb.commons.config.LocaleManager" %>
<%@ page import="org.jbpm.formModeler.api.model.Form" %>
<%@ page import="org.jbpm.formModeler.components.editor.WysiwygFormEditor" %>

<%@ taglib uri="factory.tld" prefix="factory" %>
<%@ taglib uri="http://jakarta.apache.org/taglibs/i18n-1.0" prefix="i18n" %>
<%@ taglib uri="mvc_taglib.tld" prefix="mvc" %>
<%@ taglib prefix="static" uri="static-resources.tld" %>

<i18n:bundle id="bundle" baseName="org.jbpm.formModeler.components.editor.messages" locale="<%=LocaleManager.currentLocale()%>"/>

<mvc:formatter name="org.jbpm.formModeler.components.editor.BindingFormFormatter">
    <%------------------------------------------------------------------------------------------------------------%>
    <mvc:fragment name="outputStart">
        <script language="javascript">
            $(document).ready(function(){
                $("#red").treeview({
                    animated: "fast",
                    collapsed: true,
                    control: "#treecontrol",
                    unique: true
                });
            });
        </script>
        <div class="FormProperties">
        <table cellpadding="0" cellspacing="0" border="0"  width="100%"><tr><td>
        <ul id="red" class="treeview-red">

    </mvc:fragment>
    <%------------------------------------------------------------------------------------------------------------%>
    <mvc:fragment name="outputNameInput">
    </mvc:fragment>
    <%------------------------------------------------------------------------------------------------------------%>
    <mvc:fragment name="outputStartBindings">
    </mvc:fragment>

    <mvc:fragment name="outputBinding">
        <mvc:fragmentValue name="id" id="id">
            <mvc:fragmentValue name="type" id="type">
                <mvc:fragmentValue name="value" id="value">
                    <mvc:fragmentValue name="open" id="open">
                        <mvc:fragmentValue name="showBindingName" id="showBindingName">
                    <li <%= (open!=null && (Boolean.TRUE.equals((Boolean)open)) ? "class=\"open\"":"" )%> ><span title="<%=id%>"><b><%=showBindingName%></b><a title="<i18n:message key="addAllBindingFields">!!!addAllBindingFields</i18n:message>"
                    href="<factory:url  action="formBindings"><factory:param name="bindingId" value="<%=id%>"/><factory:param name="<%=WysiwygFormEditor.ACTION_TO_DO%>" value="<%=WysiwygFormEditor.ACTION_ADD_BINDING_FIELDS%>"/></factory:url>"
                    onclick="return confirm('<i18n:message key="binding_allRemainFields">binding_allRemainFields!!</i18n:message>');" >
                    <img style="float: right; position: relative; top: 0px;" src="<static:image relativePath="actions/triang_right.png"/>">
                    </a></span>
                    <ul>
                    </mvc:fragmentValue>
                </mvc:fragmentValue>
                </mvc:fragmentValue>
               </mvc:fragmentValue>
        </mvc:fragmentValue>
    </mvc:fragment>
    <mvc:fragment name="firstField">
    </mvc:fragment>
    <mvc:fragment name="outputField">
        <mvc:fragmentValue name="bindingId" id="bindingId">
            <mvc:fragmentValue name="iconUri" id="iconUri">
                <mvc:fragmentValue name="typeName" id="typeName">
                    <mvc:fragmentValue name="fieldName" id="fieldName">
                        <mvc:fragmentValue name="showFieldName" id="showFieldName">
                        <li><span title="<%=fieldName%>"><img src="<static:image relativePath="<%=(String)iconUri%>"/>"
                                       align="absmiddle">
                                        <%=showFieldName%>
                                            <a href="<factory:url  action="addFieldFromBinding">
                                                         <factory:param name="bindingId" value="<%=bindingId%>"/>
                                                         <factory:param name="fieldName" value="<%=fieldName%>"/>
                                                         <factory:param name="fieldTypeCode" value="<%=typeName%>"/>
                                                         </factory:url>"><img style="float: right; right; position: relative; top: 0px;" src="<static:image relativePath="actions/triang_right.png"/>"> </a>
                            </span></li>
                        </mvc:fragmentValue>
                    </mvc:fragmentValue>
                </mvc:fragmentValue>
            </mvc:fragmentValue>
        </mvc:fragmentValue>
    </mvc:fragment>
    <mvc:fragment name="lastField">
    </mvc:fragment>

    <mvc:fragment name="outputEndBindings">
        </ul> </li>
    </mvc:fragment>
    <%------------------------------------------------------------------------------------------------------------%>
    <mvc:fragment name="outputEnd">
        </ul>
        </td></tr>
        </table>
        </div>
    </mvc:fragment>
    <%------------------------------------------------------------------------------------------------------------%>
</mvc:formatter>