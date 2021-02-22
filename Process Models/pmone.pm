{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "BusinessRuleTask_ksom74",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1v7z0jt",
                "sourceRef": "StartEvent_8e55mi",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_1u1p7jp",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1waka4k",
                "sourceRef": "BusinessRuleTask_ksom74",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_1waka4k",
            "businessProp": {},
            "name": "End",
            "id": "EndEvent_1u1p7jp",
            "type": "bpmn:endEvent"
        },
        "businessRuleTask": {
            "outgoing": "SequenceFlow_1waka4k",
            "incoming": "SequenceFlow_1v7z0jt",
            "businessProp": {
                "output": "obj",
                "businessRulePlaceholderUrl": "{{HOST}}/rest/decisiontable/{{CONTEXT}}/{{APPLICATION}}/com.dm.one.model/com.dm.one.decisiontable",
                "parameters-collaps": [{
                    "reference": "bizOne",
                    "configurations": {
                        "showDelButton": false,
                        "showAddButton": false
                    },
                    "groupLabel": "bizOne",
                    "label": [
                        "Name",
                        "Value"
                    ],
                    "type": "attributeGroup",
                    "primaryPanal": [
                        {
                            "reference": "name",
                            "configurations": {"disableEdit": true},
                            "type": "inputWithoutLable",
                            "maxLength": 30,
                            "events": {},
                            "parentRef": "bizOne"
                        },
                        {
                            "reference": "value",
                            "type": "inputWithoutLable",
                            "events": {},
                            "parentRef": "bizOne"
                        }
                    ],
                    "listType": "inputList"
                }],
                "bizOne": [
                    {
                        "name": "ApplicantAge",
                        "objectName": "bizOne",
                        "type": null,
                        "value": "age"
                    },
                    {
                        "name": "MedicalHistory",
                        "objectName": "bizOne",
                        "type": null,
                        "value": "mh"
                    },
                    {
                        "name": "ApplicantRiskRating",
                        "objectName": "bizOne",
                        "type": null,
                        "value": "rate"
                    }
                ],
                "decision-model": "{\"name\":\"one.dm\",\"type\":17,\"parentName\":\"Decision Models\",\"location\":\"/DefectRetest190/Decision Models\",\"properties\":{\"isWorkspaceReady\":true},\"meta\":\"{}\",\"size\":0,\"errorMessage\":null,\"parentId\":\"7c73c17a-2508-4112-b0d7-29b4917e3ce7\",\"projectId\":\"8de3ea56-a221-4600-959c-3280120dafc4\",\"referenceId\":null,\"namespaceId\":\"com.dm.one\",\"content\":null,\"id\":\"be5e6bef-17c0-41e4-8c4d-6403b8ac0747\",\"createdOn\":\"2021-02-22T18:19:45.063+05:30\",\"modifiedOn\":\"2021-02-22T18:23:57.046+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}",
                "decisionmodel-id": "com.dm.one.model",
                "parameters": [
                    {
                        "name": "ApplicantAge",
                        "objectName": "bizOne",
                        "type": null,
                        "value": "age"
                    },
                    {
                        "name": "MedicalHistory",
                        "objectName": "bizOne",
                        "type": null,
                        "value": "mh"
                    },
                    {
                        "name": "ApplicantRiskRating",
                        "objectName": "bizOne",
                        "type": null,
                        "value": "rate"
                    }
                ],
                "decisiontable-id": "com.dm.one.decisiontable"
            },
            "name": "testdm",
            "id": "BusinessRuleTask_ksom74",
            "type": "bpmn:businessRuleTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_1v7z0jt",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_8e55mi",
            "type": "bpmn:startEvent"
        },
        "id": "Process_sdxj0h"
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_sdxj0h",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_8e55mi",
                    "Bounds": {
                        "cx": 298,
                        "cy": 279.5,
                        "x": 280,
                        "width": 36,
                        "y": 250,
                        "height": 59
                    },
                    "id": "StartEvent_8e55mi_ve"
                },
                {
                    "bpmnElement": "BusinessRuleTask_ksom74",
                    "Bounds": {
                        "cx": 592,
                        "cy": 280.99999237060547,
                        "x": 515.0199966430664,
                        "width": 153.9600067138672,
                        "y": 242.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "BusinessRuleTask_ksom74_ve"
                },
                {
                    "bpmnElement": "EndEvent_1u1p7jp",
                    "Bounds": {
                        "cx": 802,
                        "cy": 347.5,
                        "x": 784,
                        "width": 36,
                        "y": 318,
                        "height": 59
                    },
                    "id": "EndEvent_1u1p7jp_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "316",
                            "y": "268"
                        },
                        {
                            "x": "415.5099983215332",
                            "y": "268"
                        },
                        {
                            "x": "415.5099983215332",
                            "y": "280.9999990844727"
                        },
                        {
                            "x": "515.0199966430664",
                            "y": "280.9999990844727"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1v7z0jt",
                    "id": "SequenceFlow_1v7z0jt_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "668.9799966430664",
                            "y": "280.99999145507815"
                        },
                        {
                            "x": "726.4899983215332",
                            "y": "280.99999145507815"
                        },
                        {
                            "x": "726.4899983215332",
                            "y": "336"
                        },
                        {
                            "x": "784",
                            "y": "336"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1waka4k",
                    "id": "SequenceFlow_1waka4k_ve"
                }
            ]
        },
        "id": "Process_sdxj0h_ve"
    },
    "collaboration": {}
}