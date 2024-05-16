shader_type spatial;

render_mode cull_disabled;


uniform vec4 albedo : source_color = vec4(1.0);
uniform vec4 wire_color : source_color = vec4(0.0, 0.0, 0.0, 1.0);
uniform float wire_width : hint_range(0.0, 40.0) = 5.0;
uniform float wire_smoothness : hint_range(0.0, 0.1) = 0.01;

varying vec3 barys;

void vertex() {
    int index = VERTEX_ID % 3;
    switch (index) {
        case 0:
            barys = vec3(1.0, 0.0, 0.0);
            break;
        case 1:
            barys = vec3(0.0, 1.0, 0.0);
            break;
        case 2:
            barys = vec3(0.0, 0.0, 1.0);
            break;
    }
}

void fragment() {
    vec3 deltas = fwidth(barys);
    vec3 barys_s = smoothstep(deltas * wire_width - wire_smoothness, deltas * wire_width + wire_smoothness, barys);
    float wires = min(barys_s.x, min(barys_s.y, barys_s.z));
    float mixer = 0.0;
    if (UV.x <= 0.01 || UV.y <= 0.01) {
        mixer = 1.0;
    }
    if (UV.x >= 0.99 || UV.y >= 0.99) {
        mixer = 1.0;
    }
    
    ALBEDO = mix(wire_color.rgb, albedo.rgb, wires);
    ALPHA =  mixer *  (1.0-step(0.1, wires));
}