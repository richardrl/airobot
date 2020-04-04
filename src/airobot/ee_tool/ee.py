class EndEffectorTool(object):
    """
    Base class for end effector.

    Args:
        configs (YACS CfgNode): configurations for the end effector.

    Attributes:
        configs (YACS CfgNode): configurations for the end effector.
    """

    def __init__(self, configs):
        self.configs = configs

    def open(self, **kwargs):
        raise NotImplementedError

    def close(self, **kwargs):
        raise NotImplementedError
