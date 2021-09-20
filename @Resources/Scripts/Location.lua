function Initialize()
    
end

function Update()
    CityMeasure = SKIN:GetMeasure('CityRequests')
    CityName = CityMeasure:GetStringValue()
    CityString = CityExtract(CityName)
    SKIN:Bang('!SetVariable', 'CurrentLocation', CityString)
end

function CityExtract(City)
    for i = -6,-100,-1
    do
        if string.sub(City, i, i) == ">" then
            return string.sub(City, i+1, -6)
        end
    end
end