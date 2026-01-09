#!/bin/sh
set -euf

class SixAxisModelOfInfluence(models.Model):
        id = models.UUIDAttribute("Primary key id that is a secure-random 32-character lowercase hexadecimal, optimized for zero information rather than speed and memory; you can show this id to users.")
        lock_version = models.IntegerAttribute("This is for optimistic locking.")
        created_at = models.UnknownAttribute("The time when this happened.")
        created_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        updated_at = models.UnknownAttribute("The time when this happened.")
        updated_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        retired_at = models.UnknownAttribute("The time when this happened.")
        retired_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        locale_code = models.TextAttribute("An international locale identifier, such as the id of locale "English - United States".")
        tagging = models.TextAttribute("A tagging list that is space-separated and without any hash marks.")
        suggestibility = models.UnknownAttribute("Suggestibility is the degree to which a person will accept and then act on a given suggestion by an operator.
Prioritize this axis for a situation that require you to be more memorable than persuasive.")
        focus = models.UnknownAttribute("Focus is the degree to which a person will maintain attention on something and exclude other competing stimuli from awareness.
Prioritize this axis for a situation requiring strong deviation from person's normal behavior.")
        openness = models.UnknownAttribute("Openness is the degree to which a person feels they can completely become vulnerable with another person, marked by an absence of fear of social or societal repercussions.
Prioritize this axis for a situation requiring more trust and emotion than logic and judgment.")
        connection = models.UnknownAttribute("Connection is the degree to which a person feels a sense of social connection with another marked by a desire for future contact.
Prioritize this axis for a situation requiring deviation from baseline that the subject might perceive as illogical or unusual.")
        compliance = models.UnknownAttribute("Compliance is the degree to which a person will comply with a direction to perform an action.
Prioritize this axis for a situation requiring a gradual increase in compliant behavior that becomes self-sustaining over time.")
        expectancy = models.UnknownAttribute("Expectancy is the degree to which a person reasonably feels they can predict, either consciously or unconsciously, what's to come, and that it will be enjoyed. 
Prioritize this axis for a situation requiring excitement and trust, where the subject will use predictions about the future to make decisions about themselves in the present.")

