/*
 * Copyright 2015 Red Hat, Inc. and/or its affiliates.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
*/

package org.jbpm.formModeler.kie.services;

import org.kie.internal.task.api.ContentMarshallerContext;

import java.io.Serializable;

public interface FormRenderContentMarshallerManager extends Serializable {
    void addContentMarshaller(String id, ContentMarshallerContext context);
    void removeContentMarshaller(String id);

    ContentMarshallerContext getContentMarshaller(String id);
}
