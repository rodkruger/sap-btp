sap.ui.define([
    "sap/m/MessageToast"
], function (MessageToast) {
    'use strict';

    return {

        checkNcm: async function (oEvent) {

            const materialDescr = oEvent.getValue("materialDescr");
            const actualNcm = oEvent.getValue("ncm");

            var oData = {
                "messages": [
                    { "role": "user", "content": [{ "type": "text", "text": "Qual o código NCM do " + materialDescr + "? Somente o código e a descrição do NCM e mais nada. Resposta em inglês" }] }
                ],
                "temperature": 0.0,
                "top_p": 0.1,
                "max_tokens": 40,
                "n": 1
            }

            fetch("https://aoai-rpa-prod-001.openai.azure.com/openai/deployments/ncm/chat/completions?api-version=2024-02-15-preview", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                    "api-key": "3ea55c60be004010b76e4d6a2e88099a"
                },
                body: JSON.stringify(oData)
            })
                .then(response => response.json())
                .then(data => {
                    const correctNcm = data.choices[0].message.content;

                    if (correctNcm.includes(actualNcm.trim())) {
                        MessageToast.show("NCM correct!");
                    } else {
                        MessageToast.show("NCM code incorrect!\nCorrect: " + correctNcm, { duration: 20000, width: "500px" });
                    }

                })
                .catch(error => {
                    MessageToast.show(JSON.stringify(error));
                });

        }
    };
});
