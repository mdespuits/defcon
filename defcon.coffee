$ ->
  result      = 1
  oneSecond   = 1000
  twoSeconds  = 2 * oneSecond
  fiveSeconds = 5 * oneSecond

  defconLevels = 5
  jenkinsUri   = ->
    "#{$(".source-value").val().trim()}/api/json?tree=jobs[name,url,color]&jsonp=?"

  _buildStatuses = (jobs) ->
    statuses = (job.color for job in jobs)
    for build in statuses
      build if build isnt "notbuilt" and build isnt "disabled"

  _passingBuilds = (builds) ->
    (color for color in builds when color is "blue" or color is "yellow")

  _buildPassingPercentage = (passing, builds) ->
    passing.length / builds.length

  calculateDefconNumber = (builds) ->
    jobs          = builds.jobs
    built         = _buildStatuses(jobs)
    passing       = _passingBuilds(built)
    percentage    = _buildPassingPercentage(passing, built)
    defconNumber  = Math.ceil(percentage * defconLevels)
    defconNumber  = 5 if defconNumber > 5
    defconNumber  = 1 if defconNumber < 1
    defconNumber

  fetchBuildData = (func) ->
    $.ajax
      url: jenkinsUri()
      data: null
      timeout: twoSeconds
      dataType: "jsonp"
      error:   (data) -> console?.log "Sorry, could not fetch data"
      success: (data) ->
        console.log data
        updateDefconLevel(data)

  updateDefconLevel = (data) ->
    currentDefconLevel = calculateDefconNumber(data)
    $(".levels .active").removeClass("active")
    $(".defcon-#{currentDefconLevel}").addClass("active")

  fetchBuildData()
  setInterval (-> fetchBuildData()), twoSeconds
