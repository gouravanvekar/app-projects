(function(){
    "use strict";
    var app = angular.module('myVote', ["common.services", "ui.router", "votingResourceMock", "ui.grid", "nvd3", "ngAnimate", "ui.bootstrap"]);

    app.config(["$stateProvider", "$urlRouterProvider",
        function($stateProvider, $urlRouterProvider) {
            $urlRouterProvider.otherwise('/');
            $stateProvider
                .state('home', {
                    url: "/",
                    templateUrl: "../templates/landing.html"
                })
                .state('candidates', {
                    url: "/candidates",
                    templateUrl: "../templates/candidateView.html",
                    controller: 'CandidateController as CandidateCtrl'
                })
                .state('candidateDetails', {
                    url: "/candidates/:candidateId",
                    templateUrl: "../templates/candidateDetails.html",
                    controller: 'CandidateDetailsController as DetailsCtrl'
                })
                .state('viewCandidates', {
                    url: "/view/:candidateId",
                    templateUrl: "../templates/viewCandidate.html",
                    controller: 'CandidateDetailsController as DetailsCtrl'
                })
                .state('position', {
                    url: "/vote/:positionId",
                    templateUrl: "../templates/votingCandidates.html",
                    controller: 'VoteController as VoteCtrl'
                })
                .state('results', {
                    url: "/results",
                    templateUrl: "../templates/resultsView.html",
                    controller: 'ResultsController as ResultsCtrl'
                })
                .state('analysis', {
                    url: "/analysis",
                    templateUrl: "../templates/chartView.html",
                    controller: 'ResultsController as ResultsCtrl'
                })
                .state('winners', {
                    url: "/winners",
                    templateUrl: "../templates/winnersView.html",
                    controller: 'ResultsController as ResultsCtrl'
                })
        }
    ]);

    app.run(['$window', '$rootScope',
        function ($window ,  $rootScope) {
            $rootScope.goBack = function(){
                $window.history.back();
            }
        }]);
})();