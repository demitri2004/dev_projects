'use strict';

eventsApp.controller('EditEventController',
    function EditEventController($scope, EventData){

        $scope.saveEvent = function(event, newEventForm){
            if(newEventForm.$valid){
                eventData.save(event)
                    .$promise
                    .then(function(response) { console.log('success', response)})
                    .catch(function(response) { console.log('failure', response)});
            }
        }
        $scope.cancelEdit = function(){
            window.location = "/EventDetails.html";
        };
    });