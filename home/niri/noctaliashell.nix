{
  inputs,
  config,
  ...
}:

{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia = {
    enable = true;

    settings = {
      bar.main = {
        #density = "compact";
        position = "left";
        #barType = "floating";
        capsule = true;
	margin_ends = 10;
	margin_edge = 10;

	start = ["launcher" "clock" "group:mon" "active_window" "media"];
	center = ["workspaces"];
	end = ["tray" "notifications" "weather" "volume" "control-center"];
      };

      bar.main.capsule_group = [{
	  id = "mon";
	  members = ["cpu" "ram" "temp" ];
	  fill = "surface_variant";
	  padding = 6.0;
	  opacity = 0.9;
	}];

      widget.clock = {
	format = "%H:%M";
      };

      widget.cpu = {
	type = "sysmon";
	stat = "cpu_usage";
	display = "gauge";
	show_label = false;
      };
      widget.ram = {
	type = "sysmon";
	stat = "ram_pct";
	display = "gauge";
	show_label = false;
      };
      widget.temp = {
	type = "sysmon";
	stat = "cpu_temp";
	display = "gauge";
	show_label = false;
      };
	
      widget.control-center = {
	useDistroLogo = true;
	glyph = "nix";
	custom_image = "/run/current-system/sw/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
	custom_image_colorize=true;
      };
	
      general = {
        avatarImage = "/home/${config.home.username}/.face";
      };
	
      theme = {
      	mode = "dark";
	source = "community";
	community_palette = "Catppuccin Lavender";
      };
      # colorSchemes.predefinedScheme = "Catppuccin-Lavender";

      location = {
      	auto_locate = false;
        address = "Salt Lake City, UT";
      };

      weather = {
	enabled = true;
	refresh_minutes = 30;
	unit = "metric";
	effects = true;
      };

      network = {

      };
    };
    # this may also be a string or a path to a JSON file.
  };
}
