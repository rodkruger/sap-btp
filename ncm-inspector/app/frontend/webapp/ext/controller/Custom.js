sap.ui.define([
    "sap/m/MessageToast"
], function (MessageToast) {
    'use strict';

    return {
        checkNcm: function (oEvent) {

            // Build request payload
            var oData = {
                messages: [
                    { role: "system", content: "Você é um assistente de IA que ajuda as pessoas a encontrar informações" },
                    { role: "user", content: "Quanto é 1 + 1" },
                ],
                temperature: 0.1,
                top_p: 0.1,
                max_tokens: 50
            };

            // Use native fetch API to call the backend
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
                    MessageToast.show("AI Response: " + JSON.stringify(data));
                })
                .catch(error => {
                    MessageToast.show(JSON.stringify(error));
                });

        }
    };
});
