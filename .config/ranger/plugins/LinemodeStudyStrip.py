import ranger.api
from ranger.core.linemode import LinemodeBase

@ranger.api.register_linemode
class StudyStrip(LinemodeBase):
    name = "study_strip"

    uses_metadata = True

    def filetitle(self, file, metadata):
        return file.relative_path[16:]

    def infostring(self, file, metadata):
        subject = file.relative_path[9:15]
        info = "<3"
        if (subject == "CSharp"):
            info = " "
        elif (subject == "Mobile"):
            info = " "
        elif (subject == "MicroS"):
            info = "憐"
        return info
