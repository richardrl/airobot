import os

from airobot.utils.common import list_class_names

cur_path = os.path.dirname(os.path.abspath(__file__))
class_names_to_paths = list_class_names(cur_path)
